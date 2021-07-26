/*
 * circbuf.c
 *
 *  Created on: Jul 22, 2021
 *      Author: lth
 */

#include "stdbool.h"
#include "main.h"
#include "circbuf.h"

extern uint32_t _storage_begin, _storage_end; // Defined in linker script!

uint32_t buffer_size;
uint32_t record_size;
uint32_t records_per_page;
uint32_t number_of_pages;
uint32_t number_of_records;
uint32_t first_record_number = 0;
uint32_t last_record_number = 0;

circular_buffer_record_t* get_record_address(uint32_t record_number) {
	uint32_t page_number = record_number / records_per_page;
	uint32_t record_number_on_page = record_number % records_per_page;
	return (circular_buffer_record_t *)((uint32_t)&_storage_begin + page_number * FLASH_PAGE_SIZE + record_number_on_page * record_size);
}

uint32_t find_first_record_number() {
	bool found = false;
	uint32_t record_number = 0;
	circular_buffer_record_t *record;
	while (!found && (record_number < number_of_records)) {
		record = get_record_address(record_number);
		// We are looking for the first record with previous = 0x00000000 and next != 0xffffffff
		if (record->previous == 0x00000000 && record->next != 0xffffffff) {
			found = true;
		} else {
			record_number++;
		}
	}
	if (found) return record_number;
	else return 0;
}

uint32_t find_last_record_number() {
	bool found = false;
	uint32_t record_number = 0;
	circular_buffer_record_t *record;
	while (!found && (record_number < number_of_records)) {
		record = get_record_address(record_number);
		if (record->previous != 0x00000000 && record->next == 0xffffffff) {
			found = true;
		} else {
			record_number++;
		}
		if (found) return record_number;
		else return 0;
	}

	if (found) return record_number;
	else return 0;
}

uint32_t first_last_count() {
	return (first_record_number <= last_record_number) ? (last_record_number - first_record_number) : (last_record_number + number_of_records - first_record_number);
}

void circular_buffer_init() {
	DBG("Circular buffer init");

	DBG("Storage:        : 0x%08x : 0x%08x", &_storage_begin, &_storage_end);

	buffer_size = (uint32_t)&_storage_end - (uint32_t)&_storage_begin;
	DBG("Buffer size     : %5lu (0x%05x)", buffer_size, buffer_size);

	DBG("Page size       : %4lu (0x%04x)", FLASH_PAGE_SIZE, FLASH_PAGE_SIZE);

	number_of_pages = (buffer_size) / FLASH_PAGE_SIZE;
	DBG("Number of pages : %4lu (0x%04x)", number_of_pages, number_of_pages);

	record_size = sizeof(circular_buffer_record_t);
	DBG("Record size     : %4lu (0x%02x)", record_size, record_size);

	records_per_page = FLASH_PAGE_SIZE / record_size;
	DBG("Records per page: %4lu (0x%02x)", records_per_page, records_per_page);

	DBG("Use per page    : %4lu", records_per_page * record_size);

	number_of_records = records_per_page * number_of_pages;
	DBG("Total records   : %4lu", records_per_page * (number_of_pages - 1));

	first_record_number = find_first_record_number();
	last_record_number = find_last_record_number();
	DBG("First/last      : %4lu / %4lu", first_record_number, last_record_number);

}

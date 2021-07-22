/*
 * circbuf.c
 *
 *  Created on: Jul 22, 2021
 *      Author: lth
 */

#include "main.h"
#include "circbuf.h"

uint32_t buffer_size;
uint32_t record_size;
uint32_t records_per_page;
uint32_t number_of_pages;

void circular_buffer_init() {
	DBG("Circular buffer init");

	DBG("Buffer Start    : 0x%08x", CIRCULAR_BUFFER_START);
	DBG("Buffer End      : 0x%08x", CIRCULAR_BUFFER_END);

	buffer_size = CIRCULAR_BUFFER_END - CIRCULAR_BUFFER_START;
	DBG("Buffer size     : %5lu (0x%05x)", buffer_size, buffer_size);

	DBG("Page size       : %4lu (0x%04x)", CIRCULAR_BUFFER_PAGE_SIZE, CIRCULAR_BUFFER_PAGE_SIZE);

	number_of_pages = (buffer_size + 1) / CIRCULAR_BUFFER_PAGE_SIZE;
	DBG("Number of pages : %4lu (0x%04x)", number_of_pages, number_of_pages);

	record_size = sizeof(circular_buffer_record_t);
	DBG("Record size     : %4lu (0x%02x)", record_size, record_size);

	records_per_page = CIRCULAR_BUFFER_PAGE_SIZE / record_size;
	DBG("Records per page: %4lu (0x%02x)", records_per_page, records_per_page);

	DBG("Use per page    : %4lu", records_per_page * record_size);

	DBG("Total records   : %4lu", records_per_page * (number_of_pages - 1));


}

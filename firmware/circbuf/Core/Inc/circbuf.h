/*
 * circbuf.h
 *
 *  Created on: Jul 22, 2021
 *      Author: Lars Boegild Thomsen <lbthomsen@gmail.com>
 *
 *  Circular Buffer on internal flash
 *
 */

#ifndef INC_CIRCBUF_H_
#define INC_CIRCBUF_H_

typedef struct {
	uint32_t previous; // Points to previous record - first record will have 0x00000000
	uint32_t data;
	uint32_t next; // Points to next record - last record will have 0xFFFFFFFF - nuked record 0x00000000
} circular_buffer_record_t;

void circular_buffer_init();

#endif /* INC_CIRCBUF_H_ */

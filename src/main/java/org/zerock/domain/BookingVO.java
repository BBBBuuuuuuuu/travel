package org.zerock.domain;

import lombok.Data;

@Data
public class BookingVO {
	private Long booking_no;
	private Long board_no;
	private String start_date;
	private String end_date;
	private Long price;
	private Long total_price;
	private Long people_count;
	private String member_id;

}

package org.zerock.domain;

import lombok.Data;
import lombok.Getter;

@Data
@Getter
public class BookingVO {
	private Long booking_no;
	private Long board_no;
	private String start_date;
	private String end_date;
	private Long price;
	private Long total_price;

}

package org.zerock.domain;

import lombok.Data;

@Data
public class BookingVO {
	private int boardNo;
	private String checkinDate;
	private String checkoutDate;
	private int peopleCount;
	private int price;
	private int totalPrice;
	private String memberId;
}

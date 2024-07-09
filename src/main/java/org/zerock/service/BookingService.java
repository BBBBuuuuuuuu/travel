package org.zerock.service;

import org.zerock.domain.BookingVO;

import java.util.List;

public interface BookingService {
	List<BookingVO> getListByUser(String memberId);

	BookingVO get(Long booking_no);

	boolean cancel(Long booking_no);
}

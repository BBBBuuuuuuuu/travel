package org.zerock.mapper;

import org.zerock.domain.BookingVO;
import java.util.List;

public interface BookingMapper {
	
	List<BookingVO> getListByUser(String userId);

	BookingVO read(Long booking_no);

	int delete(Long booking_no);
}

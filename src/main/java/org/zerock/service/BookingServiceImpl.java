package org.zerock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.domain.BookingVO;
import org.zerock.mapper.BookingMapper;

import java.util.List;

@Service
public class BookingServiceImpl implements BookingService {

    @Autowired
    private BookingMapper mapper;

    @Override
    public List<BookingVO> getListByUser(String memberId) {
        return mapper.getListByUser(memberId);
    }

    @Override
    public BookingVO get(Long booking_no) {
        return mapper.read(booking_no);
    }

    @Override
    public boolean cancel(Long booking_no) {
        return mapper.delete(booking_no) == 1;
    }
}

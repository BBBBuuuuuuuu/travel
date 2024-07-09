package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.zerock.domain.BookingVO;
import org.zerock.service.BookingService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class BookingController {

    @Autowired
    private BookingService service;

    @GetMapping("/bookinglist.do")
    public String getListByUser(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login.do";
        }

        List<BookingVO> bookings = service.getListByUser(userId);
        model.addAttribute("bookings", bookings);
        return "booking/list";
    }

    @GetMapping("/search")
    public String get(@RequestParam("booking_no") Long booking_no, Model model) {
        BookingVO booking = service.get(booking_no);
        model.addAttribute("booking", booking);
        return "booking/search :: modalContents";
    }

    @PostMapping("/delete")
    @ResponseBody
    public ResponseEntity<String> cancel(@RequestParam("booking_no") Long booking_no) {
        boolean isDeleted = service.cancel(booking_no);
        if (isDeleted) {
            return ResponseEntity.ok("{\"message\": \"Booking cancelled successfully\"}");
        } else {
            return ResponseEntity.status(500).body("{\"message\": \"Error cancelling booking\"}");
        }
    }
}

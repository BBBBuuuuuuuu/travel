package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	 @RequestMapping(value="/main.do", method = RequestMethod.GET)
	    public String mainPage(HttpSession session, Model model) {
	        String userId = (String) session.getAttribute("userId");
	        if (userId != null) {
	            model.addAttribute("userId", userId);
	        }
	        return "board/main";
	    }
}

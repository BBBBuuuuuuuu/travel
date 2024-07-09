package org.zerock.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.SurveyVO;
import org.zerock.service.SurveyService;

@Controller
public class SurveyController {

    private static final Logger logger = LoggerFactory.getLogger(SurveyController.class);

    @Autowired
    private SurveyService surveyService;

    @RequestMapping(value="survey.do", method = RequestMethod.GET)
    public String showInsertSurveyForm(HttpSession session, Model model) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login.do";
        }
        model.addAttribute("userId", userId);
        return "survey/survey";
    }

    @RequestMapping(value="survey.do", method = RequestMethod.POST)
    public String insertSurvey(@ModelAttribute SurveyVO survey, HttpSession session) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login.do";
        }
        survey.setMember_id(userId);
        surveyService.insertSurvey(survey);
        logger.info("Survey inserted with ID: " + survey.getSurvey_no());
        return "redirect:/main.do";
    }

    @RequestMapping(value = "deleteSurvey.do", method = RequestMethod.POST)
    public String deleteSurvey(@RequestParam("survey_no") Long surveyNo, HttpSession session) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login.do";
        }
        boolean isDeleted = surveyService.deleteSurvey(surveyNo);
        if (isDeleted) {
            return "redirect:/main.do";
        } else {
            return "redirect:/survey/error";
        }
    }

        @RequestMapping(value = "/surveylist.do", method = RequestMethod.GET)
        public String listSurveys(HttpSession session, Model model) {
            String userId = (String) session.getAttribute("userId");
            if (userId == null) {
                return "redirect:/login.do";
            }
            List<SurveyVO> surveys = surveyService.getAllSurveysByUserId(userId);
            model.addAttribute("surveys", surveys);
            return "survey/surveylist"; 
        }

        @RequestMapping(value = "/surveysearch.do", method = RequestMethod.GET)
        public String showSurvey(@RequestParam("survey_no") Long surveyNo, Model model) {
            SurveyVO survey = surveyService.getSurvey(surveyNo);
            model.addAttribute("survey", survey);
            return "survey/surveysearch";
        }
        
//        @GetMapping
//        public String searchBySurvey(SurveyVO survey) {
//        	  surveyService.getCommonBoard(survey);
//        	return"";
//        }
    }

    



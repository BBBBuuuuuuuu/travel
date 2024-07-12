package org.zerock.service;

import java.util.List;

import org.zerock.domain.ActivityTypeVO;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.BoardVO;
import org.zerock.domain.StayVO;
import org.zerock.domain.SurveyVO;

public interface SurveyService {
    void insertSurvey(SurveyVO vo);
    
    void insertActivityType(SurveyVO vo);

    boolean deleteSurvey(Long surveyNo);

    SurveyVO getSurvey(Long surveyNo);

    List<ActivityTypeVO> getActivityTypesBySurveyNo(Long surveyNo);

    List<SurveyVO> getAllSurveysByUserId(String userId);

    List<ActivityTypeVO> getAllActivityTypesByUserId(String userId);

    List<SurveyVO> getAllSurveysWithActivityTypesByUserId(String userId);

	List<BoardVO> getCommonBoard(SurveyVO survey, String category);

	List<StayVO> getStayBoardWithCategory(SurveyVO survey, List<BoardVO> boardNumList);

	List<ActivityVO> getActivityBoard(SurveyVO survey, List<BoardVO> boardNumList);

}


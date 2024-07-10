package org.zerock.service;

import java.util.List;
import org.zerock.domain.SurveyVO;
import org.zerock.domain.ActivityTypeVO;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.StayVO;

public interface SurveyService {
    void insertSurvey(SurveyVO vo);
    
    void insertActivityType(SurveyVO vo);

    boolean deleteSurvey(Long surveyNo);

    SurveyVO getSurvey(Long surveyNo);

    List<ActivityTypeVO> getActivityTypesBySurveyNo(Long surveyNo);

    List<SurveyVO> getAllSurveysByUserId(String userId);

    List<ActivityTypeVO> getAllActivityTypesByUserId(String userId);

    List<SurveyVO> getAllSurveysWithActivityTypesByUserId(String userId);

	List<Integer> getCommonBoard(SurveyVO survey);

	List<StayVO> getStayBoardWithCategory(SurveyVO survey, List<Integer> boardNumList);

	List<ActivityVO> getActivityBoard(SurveyVO survey, List<Integer> boardNumList);

}


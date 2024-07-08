package org.zerock.service;

import java.util.List;
import org.zerock.domain.SurveyVO;
import org.zerock.domain.ActivityTypeVO;

public interface SurveyService {
    void insertSurvey(SurveyVO vo);
    
    void insertActivityType(SurveyVO vo);

    boolean deleteSurvey(Long surveyNo);

    SurveyVO getSurvey(Long surveyNo);

    List<ActivityTypeVO> getActivityTypesBySurveyNo(Long surveyNo);

    List<SurveyVO> getAllSurveysByUserId(String userId);

    List<ActivityTypeVO> getAllActivityTypesByUserId(String userId);

    List<SurveyVO> getAllSurveysWithActivityTypesByUserId(String userId);
}


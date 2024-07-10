package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.zerock.domain.SurveyVO;
import org.zerock.domain.ActivityTypeVO;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.StayVO;

@Mapper
public interface SurveyMapper {
    void insertSurvey(SurveyVO survey);
    
    void insertActivityType(SurveyVO vo);

    int deleteActivityTypesBySurveyNo(Long surveyNo);

    int deleteSurvey(Long surveyNo);

    SurveyVO getSurveyById(Long surveyNo);

    List<ActivityTypeVO> getActivityTypesBySurveyNo(Long surveyNo);

    List<SurveyVO> getSurveyListByUserId(@Param("userId") String userId);

    List<ActivityTypeVO> getAllActivityTypesByUserId(@Param("userId") String userId);

	List<Integer> selectCommonBoardNo(@Param("month") String monthForClimate,@Param("survey") SurveyVO survey);

	StayVO selectStayBoardWithCategory(@Param("survey") SurveyVO survey,@Param("boardNum") Integer board);

	ActivityVO selectActivityBoardWithCategory(@Param("survey") SurveyVO survey, @Param("boardNum") Integer board);
}

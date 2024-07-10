package org.zerock.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.ActivityTypeVO;
import org.zerock.domain.ActivityVO;
import org.zerock.domain.StayVO;
import org.zerock.domain.SurveyVO;
import org.zerock.mapper.SurveyMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class SurveyServiceImpl implements SurveyService {

     private static final Logger logger = LoggerFactory.getLogger(SurveyServiceImpl.class);

    @Autowired
    private SurveyMapper surveyMapper;

    @Override
    @Transactional
    public void insertSurvey(SurveyVO vo) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date parsedStartDate = format.parse(vo.getStart_date());
            Date parsedEndDate = format.parse(vo.getEnd_date());
            vo.setStart_date(new java.sql.Date(parsedStartDate.getTime()).toString());
            vo.setEnd_date(new java.sql.Date(parsedEndDate.getTime()).toString());
            //start, end_date를 Date type으로 변환하여 db상에 전달.
        } catch (ParseException e) {
            e.printStackTrace();
            // handle the error appropriately
        }
        surveyMapper.insertSurvey(vo);  // survey_no를 액티비티에 전달

        // 입력받은 액티비티 타입 1,2,3을 액티비티 타입에 넣어서 액티비티 테이블에 저장
        if (vo.getActivity_type1() != null && !vo.getActivity_type1().isEmpty()) {
            vo.setActivity_type(vo.getActivity_type1());
            surveyMapper.insertActivityType(vo);
        }
        if (vo.getActivity_type2() != null && !vo.getActivity_type2().isEmpty()) {
            vo.setActivity_type(vo.getActivity_type2());
            surveyMapper.insertActivityType(vo);
        }
        if (vo.getActivity_type3() != null && !vo.getActivity_type3().isEmpty()) {
            vo.setActivity_type(vo.getActivity_type3());
            surveyMapper.insertActivityType(vo);
        }
    }

    @Override
    @Transactional
    public void insertActivityType(SurveyVO vo) {
        surveyMapper.insertActivityType(vo);
    }

    @Override
    @Transactional
    public boolean deleteSurvey(Long surveyNo) {
    	//삭제를 하기 위해서는 activity_type, survey table 순으로 지워야 하기에 따로 코드를 작성
    	//activity_type에 대한 vo를 추가함
        int deletedActivities = surveyMapper.deleteActivityTypesBySurveyNo(surveyNo);
        int deletedSurveys = surveyMapper.deleteSurvey(surveyNo);
        return deletedActivities > 0 && deletedSurveys > 0;
    }

    @Override
    public SurveyVO getSurvey(Long surveyNo) {
        SurveyVO survey = surveyMapper.getSurveyById(surveyNo);
        List<ActivityTypeVO> activities = surveyMapper.getActivityTypesBySurveyNo(surveyNo);

        logger.info("Activities: " + activities.toString());
        if (activities != null && !activities.isEmpty()) {
            if (activities.size() > 0) {
            	   // 첫 번째 활동 유형을 survey 객체에 설정 밑에 두개의 객체도 동일하게 두번째 세번째 활동 유형을 survey 객체에 저장하여
            	//survey에 리턴
                survey.setActivity_type1(activities.get(0).getActivity_type()); 
            }
            if (activities.size() > 1) {
                survey.setActivity_type2(activities.get(1).getActivity_type()); 
            }
            if (activities.size() > 2) {
                survey.setActivity_type3(activities.get(2).getActivity_type());
            }
        }
        System.out.println(survey.getStart_date().substring(5, 7));
        return survey;
    }



    @Override
    public List<ActivityTypeVO> getActivityTypesBySurveyNo(Long surveyNo) {
        return surveyMapper.getActivityTypesBySurveyNo(surveyNo);
    }

    @Override
    public List<SurveyVO> getAllSurveysByUserId(String userId) {
        return surveyMapper.getSurveyListByUserId(userId);
    }

    @Override
    public List<ActivityTypeVO> getAllActivityTypesByUserId(String userId) {
        return surveyMapper.getAllActivityTypesByUserId(userId);
    }

    @Override
    public List<SurveyVO> getAllSurveysWithActivityTypesByUserId(String userId) {
        List<SurveyVO> surveys = surveyMapper.getSurveyListByUserId(userId);
        List<ActivityTypeVO> activities = surveyMapper.getAllActivityTypesByUserId(userId);

        Map<Long, List<ActivityTypeVO>> activitiesBySurvey = activities.stream()
            .collect(Collectors.groupingBy(ActivityTypeVO::getSurvey_no));

        for (SurveyVO survey : surveys) {
            survey.setActivityTypes(activitiesBySurvey.get(survey.getSurvey_no()));
        }

        return surveys;
    }

	@Override
	public List<Integer> getCommonBoard(SurveyVO survey) {
		return surveyMapper.selectCommonBoardNo(toMonthClimate(survey.getStart_date()), survey);
	}
	
	private String toMonthClimate(String startDate) {
		String month = startDate.substring(5, 7);
		if(month.equals("01")) 
			return "jan";
		else if(month.equals("02")) 
			return "feb";
		else if(month.equals("03")) 
			return "mar";
		else if(month.equals("04")) 
			return "apr";
		else if(month.equals("05")) 
			return "may";
		else if(month.equals("06")) 
			return "jun";
		else if(month.equals("07")) 
			return "jul";
		else if(month.equals("08")) 
			return "aug";
		else if(month.equals("09")) 
			return "sep";
		else if(month.equals("10")) 
			return "oct";
		else if(month.equals("11")) 
			return "nov";
		else  
			return "dec";
	}

	@Override
	public List<StayVO> getStayBoardWithCategory(SurveyVO survey, List<Integer> boardNumList) {
		List<StayVO> stayList = null;
		for(Integer board : boardNumList) {
			stayList.add(surveyMapper.selectStayBoardWithCategory(survey, board));
		}
		log.info("SurveyServiceImpl StayBoard" + stayList);
		return stayList;
	}

	@Override
	public List<ActivityVO> getActivityBoard(SurveyVO survey, List<Integer> boardNumList) {
		List<ActivityVO> activityList = null;
		for(Integer board : boardNumList) {
			activityList.add(surveyMapper.selectActivityBoardWithCategory(survey, board));
		}
		log.info("SurveyServiceImpl ActivityBoard" + activityList);
		return activityList;
	}

	
	
}

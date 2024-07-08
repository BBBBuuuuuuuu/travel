package org.zerock.domain;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Data
@Getter
@Setter
public class SurveyVO {
    private Long survey_no;
    private String member_id;
    private String country;
    private String area;
    private String start_date;
    private String end_date;
    private String stay_type;
    private Long peoplecount;
    private String climate;
    private Long activity_no;
    private String activity_type;
    private String activity_type1;
    private String activity_type2;
    private String activity_type3;
    private List<ActivityTypeVO> activityTypes; 
}

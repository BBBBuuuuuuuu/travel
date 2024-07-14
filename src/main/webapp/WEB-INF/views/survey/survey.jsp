<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 입력</title>
<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
body {
	font-family: Arial, sans-serif;
}
.form-container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #f9f9f9;
}
.form-container h2 {
	text-align: center;
}
.form-container label {
	display: block;
	margin: 10px 0 5px;
}
.form-container input[type="text"], .form-container select {
	width: 100%;
	padding: 10px;
	margin: 5px 0 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box; /* 모든 박스 요소의 너비와 높이를 포함한 패딩과 테두리를 계산 */
}
.form-container input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}
.form-container input[type="submit"]:hover {
	background-color: #45a049;
}
.error-message {
	color: red;
	text-align: center;
}
</style>
<script>
	$(function() {
		var citiesByCountry = {
			"교황청" : [ "바티칸시티" ],
			"그리스" : [ "아테네", "테살로니키" ],
			"네덜란드" : [ "암스테르담", "로테르담", "헤이그" ],
			"노르웨이" : [ "오슬로", "베르겐" ],
			"덴마크" : [ "코펜하겐", "오르후스" ],
			"독일" : [ "베를린", "함부르크", "뮌헨" ],
			"라트비아" : [ "리가" ],
			"룩셈부르크" : [ "룩셈부르크 시티" ],
			"리투아니아" : [ "빌뉴스" ],
			"리히텐슈타인" : [ "파두츠" ],
			"모나코" : [ "모나코" ],
			"몬테네그로" : [ "포드고리차" ],
			"몰도바" : [ "키시너우" ],
			"몰타" : [ "발레타" ],
			"벨기에" : [ "브뤼셀", "안트베르펜" ],
			"벨라루스" : [ "민스크" ],
			"보스니아헤르체고비나" : [ "사라예보" ],
			"북마케도니아" : [ "스코페" ],
			"불가리아" : [ "소피아" ],
			"사이프러스" : [ "니코시아" ],
			"산마리노" : [ "산마리노" ],
			"세르비아" : [ "베오그라드" ],
			"스웨덴" : [ "스톡홀름" ],
			"스위스" : [ "취리히", "제네바" ],
			"스페인" : [ "마드리드", "바르셀로나" ],
			"슬로바키아" : [ "브라티슬라바" ],
			"슬로베니아" : [ "류블랴나" ],
			"아르메니아" : [ "예레반" ],
			"아이슬란드" : [ "레이캬비크" ],
			"아일랜드" : [ "더블린" ],
			"아제르바이잔" : [ "바쿠" ],
			"안도라" : [ "안도라 라 베야" ],
			"알바니아" : [ "티라나" ],
			"에스토니아" : [ "탈린" ],
			"영국" : [ "런던", "맨체스터", "버밍엄" ],
			"오스트리아" : [ "빈", "잘츠부르크" ],
			"우크라이나" : [ "키이우", "오데사" ],
			"이탈리아" : [ "로마", "밀라노", "베네치아" ],
			"조지아" : [ "트빌리시" ],
			"체코" : [ "프라하" ],
			"코소보" : [ "프리슈티나" ],
			"크로아티아" : [ "자그레브" ],
			"터키" : [ "앙카라", "이스탄불" ],
			"포르투갈" : [ "리스본", "포르투" ],
			"폴란드" : [ "바르샤바", "크라쿠프" ],
			"프랑스" : [ "파리", "마르세유" ],
			"핀란드" : [ "헬싱키" ],
			"헝가리" : [ "부다페스트" ]
		};
		$("#country").change(function() {
			var country = $(this).val();
			var cities = citiesByCountry[country] || [];
			var $area = $("#area");
			$area.empty();
			$.each(cities, function(index, city) {
				$area.append($("<option>", {
					value : city,
					text : city
				}));
			});
			if (cities.length === 0) {
				$area.append($("<option>", {
					value : "",
					text : "해당 국가의 도시가 없습니다."
				}));
			}
		});
		var today = new Date();
		$("#start_date").datepicker({
			dateFormat : "yy-mm-dd",
			minDate : today,
			beforeShow : function(input, inst) {
				$(input).attr('readonly', 'readonly');
			},
			onClose : function(selectedDate) {
				$("#end_date").datepicker("option", "minDate", selectedDate);
			}
		});
		$("#end_date").datepicker({
			dateFormat : "yy-mm-dd",
			minDate : today,
			beforeShow : function(input, inst) {
				$(input).attr('readonly', 'readonly');
			}
		});
		$("form").on("submit", function(event) {
			var startDate = $("#start_date").datepicker("getDate");
			var endDate = $("#end_date").datepicker("getDate");
			if (endDate && startDate && endDate < startDate) {
				alert("종료 날짜는 시작 날짜보다 이전일 수 없습니다.");
				event.preventDefault();
			}
		});
		// Ensure unique activity selection
		function updateActivityOptions() {
			const selectedValues = [
				$("#interests1").val(),
				$("#interests2").val(),
				$("#interests3").val()
			];
			$("select[id^='interests']").each(function() {
				const $select = $(this);
				const currentValue = $select.val();
				$select.find("option").each(function() {
					const $option = $(this);
					if ($option.val() && selectedValues.includes($option.val()) && $option.val() !== currentValue) {
						$option.hide();
					} else {
						$option.show();
					}
				});
			});
		}
		$("select[id^='interests']").change(updateActivityOptions);
		updateActivityOptions();
		// Validate people count input
		$("#peoplecount").on("input", function() {
			const value = $(this).val();
			if (value && (!/^\d+$/.test(value) || parseInt(value, 10) > 99 || parseInt(value, 10) < 1)) {
				$(this).val("");
				alert("인원 수는 1에서 99 사이의 숫자만 가능합니다.");
			}
		});
	});
</script>
</head>
<body>
	<div class="form-container">
		<h2>설문조사 입력</h2>
		<c:if test="${not empty errorMessage}">
			<div class="error-message">${errorMessage}</div>
		</c:if>
		<form action="survey.do" method="post" target="_top">
			<label for="member_id">회원 ID</label> <input type="text"
				id="member_id" name="member_id" value="${userId}" readonly>

			<label for="country">나라</label> <select id="country" name="country"
				required>
				<option value="">선택하세요</option>
				<option value="교황청">교황청</option>
				<option value="그리스">그리스</option>
				<option value="네덜란드">네덜란드</option>
				<option value="노르웨이">노르웨이</option>
				<option value="덴마크">덴마크</option>
				<option value="독일">독일</option>
				<option value="라트비아">라트비아</option>
				<option value="룩셈부르크">룩셈부르크</option>
				<option value="리투아니아">리투아니아</option>
				<option value="리히텐슈타인">리히텐슈타인</option>
				<option value="모나코">모나코</option>
				<option value="몬테네그로">몬테네그로</option>
				<option value="몰도바">몰도바</option>
				<option value="몰타">몰타</option>
				<option value="벨기에">벨기에</option>
				<option value="벨라루스">벨라루스</option>
				<option value="보스니아헤르체고비나">보스니아헤르체고비나</option>
				<option value="북마케도니아">북마케도니아</option>
				<option value="불가리아">불가리아</option>
				<option value="사이프러스">사이프러스</option>
				<option value="산마리노">산마리노</option>
				<option value="세르비아">세르비아</option>
				<option value="스웨덴">스웨덴</option>
				<option value="스위스">스위스</option>
				<option value="스페인">스페인</option>
				<option value="슬로바키아">슬로바키아</option>
				<option value="슬로베니아">슬로베니아</option>
				<option value="아르메니아">아르메니아</option>
				<option value="아이슬란드">아이슬란드</option>
				<option value="아일랜드">아일랜드</option>
				<option value="아제르바이잔">아제르바이잔</option>
				<option value="안도라">안도라</option>
				<option value="알바니아">알바니아</option>
				<option value="에스토니아">에스토니아</option>
				<option value="영국">영국</option>
				<option value="오스트리아">오스트리아</option>
				<option value="우크라이나">우크라이나</option>
				<option value="이탈리아">이탈리아</option>
				<option value="조지아">조지아</option>
				<option value="체코">체코</option>
				<option value="코소보">코소보</option>
				<option value="크로아티아">크로아티아</option>
				<option value="터키">터키</option>
				<option value="포르투갈">포르투갈</option>
				<option value="폴란드">폴란드</option>
				<option value="프랑스">프랑스</option>
				<option value="핀란드">핀란드</option>
				<option value="헝가리">헝가리</option>
			</select> <label for="area">지역</label> <select id="area" name="area" required>
				<option value="">선택하세요</option>
			</select> <label for="start_date">시작 날짜</label> <input type="text"
				id="start_date" name="start_date" required autocomplete="off">

			<label for="end_date">종료 날짜</label> <input type="text" id="end_date"
				name="end_date" required autocomplete="off"> <label
				for="stay_type">숙소 유형</label> <select id="stay_type"
				name="stay_type" required>
				<option value="">선택하세요</option>
				<option value="호텔">호텔</option>
				<option value="게스트하우스">게스트하우스</option>
				<option value="펜션">펜션</option>
			</select> <label for="peoplecount">인원 수</label> <input type="text"
				id="peoplecount" name="peoplecount" required> <label
				for="climate">선호 기후</label> <select id="climate" name="climate"
				required>
				<option value="">선택하세요</option>
				<option value="따뜻함">따뜻함</option>
				<option value="서늘함">서늘함</option>
				<option value="선선함">선선함</option>
			</select> <label for="interests1">관심사 1</label> <select id="interests1"
				name="activity_type1" required>
				<option value="">항목을 선택해주세요</option>
				<option value="관광명소">관광명소</option>
				<option value="쇼핑">쇼핑</option>
				<option value="문화">문화</option>
				<option value="힐링">힐링</option>
				<option value="식도락">식도락</option>
				<option value="레저">레저</option>
			</select> <label for="interests2">관심사 2</label> <select id="interests2"
				name="activity_type2" required>
				<option value="">항목을 선택해주세요</option>
				<option value="관광명소">관광명소</option>
				<option value="쇼핑">쇼핑</option>
				<option value="문화">문화</option>
				<option value="힐링">힐링</option>
				<option value="식도락">식도락</option>
				<option value="레저">레저</option>
			</select> <label for="interests3">관심사 3</label> <select id="interests3"
				name="activity_type3" required>
				<option value="">항목을 선택해주세요</option>
				<option value="관광명소">관광명소</option>
				<option value="쇼핑">쇼핑</option>
				<option value="문화">문화</option>
				<option value="힐링">힐링</option>
				<option value="식도락">식도락</option>
				<option value="레저">레저</option>
			</select> <input type="submit" value="제출">
		</form>
	</div>
</body>
</html>
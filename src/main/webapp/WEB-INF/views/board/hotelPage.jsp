<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>

<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
var $j = jQuery.noConflict();
    </script>
<script src="/travel/resources/js/hotelPage.js"></script>
<script>
	var boardNo = "${board.boardNo}";
	</script>
<meta property="fb:pages" content="5863091683" />
<meta property="fb:pages" content="329182043776593" />
<script>window.performance&&performance.mark&&performance.getEntriesByType&&0===performance.getEntriesByType("visibility-state").length&&(performance.mark("visible"===document.visibilityState?"visible":"hidden"),document.addEventListener&&document.addEventListener("visibilitychange",function(){performance.mark("visible"===document.visibilityState?"visible":"hidden")},!1));</script>
<title>호텔 상세페이지</title>
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/vk2o6l4ceecg-c.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/h2v4d7.XoNZWNI.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/zsgloa.emu-z-7.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/cjerkd.PPGnhl3.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/p7jq7m.4Ujcuf7.css"
	crossorigin="" />
<script src="https://static.tacdn.com/assets/lip58vzeuda4-c.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/btx2fvfeo4nn-c.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/h2v4d7.XoNZWNI.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/hoyfym.rupGDtO.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/gg6fk5.IaofDny.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/mqwhqn.EaBuWf8.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/pn8thk.CcVtElK.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/8cre3h.59xo0IH.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/vczvsr.o5IftTr.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/zsgloa.emu-z-7.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/nflkuf.JxxwklV.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/cjerkd.PPGnhl3.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/p7jq7m.4Ujcuf7.js" async=""
	crossorigin="" fetchpriority="low"></script>
<style>
.jktzL {
    display: block !important;
}

.uuBRH {
    font: var(--_EcuCfCh7);
    margin-bottom: 20px;
}
.Ni {
    margin-right: var(--spacing-01);
    margin-top: -2%;
    margin-bottom: -15px;
}

.smallImage{
	width:100%;
}
 .LoFmz {
    width: 100%;
    border-radius: 40px;
    display: flex;  /* Flexbox를 사용하여 내용을 수평으로 배열 */
    align-items: start;  /* 아이템들을 상단 정렬 */
    overflow: hidden;
        }
      .LoFmz img {
    height: auto;
    max-width: 100%;
    display: block;
    object-fit: cover;
    border-radius: 20px;
}

.rmyCe.huqcv:not(:disabled) {
	background-color: #28a745;
	color: var(- -onLightButtonText);
}

.rmyCe.XDcOZ:not(:disabled) {
	background-color: var(- -commerceButtonFill);
	border-color: var(- -commerceButtonFill);
	color: var(- -onLightButtonText);
}

.container {
	display: flex;
	justify-content: center;
	align-items: flex-start; /* 세로 정렬을 위해 flex-start 사용 */
	height: 100vh; /* 화면 전체 높이로 설정 */
	padding-top: 20px; /* 상단 여백 추가 */
}

.jxmuG {
	margin: 0 10px; /* 각 버튼 사이의 간격 설정 */
	text-align: center; /* 버튼 내 요소들 가운데 정렬 */
}

.calendar {
	display: none; /* 초기에는 숨김 */
}

.visible {
	display: block; /* visible 클래스가 있을 때만 보이도록 설정 */
}

.modal {
	display: none; /* 처음에 모달 숨기기 */
	position: fixed;
	z-index: 1000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 10% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

.rating-stars {
	margin-bottom: 10px;
}

.rating-stars input {
	margin-right: 5px;
}

.circle{
	width:15px;
	height: 15px;
	background-color: white;
	border: 0.1px solid gray;
	border-radius:50%;
	display: inline-block;
}
.active{
	background-color: #00AA6C;
}
</style>
<!-- Flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<style>
.photos-section {
	max-width: 1000px;
	margin: 0 auto;
	overflow: hidden;
}

.photos-container {
	display: flex;
	overflow-x: auto;
	scroll-snap-type: x mandatory;
	-webkit-overflow-scrolling: touch; /* For smooth scrolling on iOS */
}

.photo {
	flex: 0 0 auto;
	scroll-snap-align: center;
	margin-right: 10px;
}

.container {
	width: -1;
}

.calendar {
	display: none;
	border: 1px solid #ccc;
	padding: 10px;
	margin-top: 10px;
}

.visible {
	display: block;
}

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.preview-img {
	max-width: 100px;
	max-height: 100px;
	display: none;
}

.review-item img {
	max-width: 30%;
	max-height: 30%;
	display: block;
	margin-top: 10px;
}

.review-item {
	border: 1px solid #ddd;
	padding: 10px;
	margin-bottom: 10px;
	border-radius: 5px;
}

.modal-backdrop {
	position: fixed;
	top: 0;
	left: 0;
	width: 100vw;
	height: 100vh;
	background-color: #000;
	z-index: 0;
}

.rating-stars {
	margin-bottom: 10px;
}

.rating-stars input {
	margin-right: 5px;
}
/*  목록 스타일 */
#submittedReviews {
	margin-top: 20px;
}

.review-item {
	border: 1px solid #ccc;
	padding: 10px;
	margin-bottom: 10px;
}

.review-item p {
	margin: 5px 0;
}

.review-item .rating {
	font-weight: bold;
	margin-bottom: 5px;
}

.rmyCe.huqcv:not(:disabled) {
	background-color: var(- -searchButtonFill);
	color: var(- -onLightButtonText);
	width: 100%;
	height: 45px;
}
   .main-image {
            width: 80%;
            max-height: 600px;
            height: auto;
        }

        .thumbnail {
            width: 100%;
            height: auto;
            margin: 5px;
            cursor: pointer;
        }

        .gallery {
            width: 18%; 
    display: flex;
    flex-direction: column;  /* 세로 방향 배열 */
    gap: 2px;  /* 이미지 사이의 간격 */
        }

#ILCbI img{
	width:400px;
	heigh:300px;
}

/* 전체 리뷰 카드 스타일 */
.review-card {
    display: flex;
    border: 1px solid #ccc;
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    width: 100%;
    box-sizing: border-box;
    align-items: center; /* 수직 중앙 정렬 */
}

/* 이미지 크기 지정 */
.review-image {
    width: 30%; /* 원하는 너비 */
    height: 200px; /* 원하는 높이 */
    object-fit: cover; /* 이미지 비율 유지하면서 자르기 */
    border-radius: 8px; /* 이미지 모서리 둥글게 */
    margin-right: 20px; /* 이미지 오른쪽 마진 */
}

/* 리뷰 텍스트 컨테이너 */
.review-details {
    display: flex;
    flex-direction: column;
}

/* 작성자 텍스트 스타일 */
.review-author {
    font-size: 16px;
    font-weight: bold;
    margin-bottom: 10px;
}

/* 평점 텍스트 스타일 */
.review-rating {
    font-size: 14px;
    color: #666;
    margin-bottom: 10px;
}

/* 내용 텍스트 스타일 */
.review-content {
    font-size: 14px;
    line-height: 1.5;
}
<!--///////////////////////////////////////////////////// -->
/* 상위 컨테이너 스타일 */
.AMQRv {
    overflow-x: auto; /* 가로 스크롤 추가 */
    white-space: nowrap; /* 자식 요소들이 한 줄로 배치되도록 설정 */
    padding: 10px;
    background-color: #f9f9f9;
    border: 1px solid #ccc;
    border-radius: 8px;
}

/* 추천 카드 스타일 */
.ZSsAY {
    display: flex;
    margin-bottom: 20px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 8px;
    background-color: #fff;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-top: 3%;
}

/* 이미지 컨테이너 */
.ILCbI.hdCDN.w {
    width: 150px; /* 원하는 너비 */
    height: 150px; /* 원하는 높이 */
    margin-right: 20px; /* 이미지 오른쪽 마진 */
}

/* 이미지 스타일 */
.recommend-image {
    width: 100%;
    height: 100%;
    object-fit: cover; /* 이미지 비율 유지하면서 자르기 */
    border-radius: 8px; /* 이미지 모서리 둥글게 */
}

/* 추천 텍스트와 평점 컨테이너 */
.DZdiH {
    display: flex;
    flex-direction: column;
    justify-content: center;
}

/* 추천 이름 스타일 */
.ILCbI.lxwEm.w {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
}

.ILCbI {
    background-color: #ffffff;
    border-radius: var(--_gPAtcjMD);
    height: 18px;
}

.recommend-image {
    width: 185%;
    height: 108%;
    object-fit: cover;
    border-radius: 8px;
}
/* 평점 컨테이너 */
.ILCbI.lnuPx.w {
    display: flex;
}

/* 평점 표시 스타일 */
.circle {
    width: 10px;
    height: 10px;
    margin-right: 5px;
    border-radius: 50%;
    background-color: white; /* 기본 평점 색상 */
    border: 0.1px solid gray;
}

.circle.active {
    background-color: #00aa6c; /* 활성 평점 색상 */
}
<!-- //////////////////////////////////////////////////-->

.ObEVv {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: var(--spacing-02);
    align-items: center;
}

.box {
    display: flex;
    justify-content: center;
}

.jxmuG {
    text-align: center;
    width: 100%;
}

button {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #f0f0f0;
    cursor: pointer;
}

button:hover {
    background-color: #e0e0e0;
}

button svg {
    fill: #333;
    width: 24px;
    height: 24px;
    margin-bottom: 5px;
}

.kPQaf {
    font-size: 14px;
    font-weight: 600;
    color: #333;
    margin-bottom: 5px;
}

.icDdG {
    font-size: 12px;
    color: #666;
}

</style>
	<%@ include file="/resources/includes/header.jsp"%>
	<main>
		<!--$-->
		<span>
			<div data-test-target="faq-json-ld">
				<script type="application/ld+json">{"@context":"http:\u002F\u002Fschema.org","@type":"FAQPage","mainEntity":[{"@type":"Question","name":"Which popular attractions are close to The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Nearby attractions include Osaka Shiki Theater (0.2 miles), Hilton Plaza Osaka East\u002FWest (0.2 miles), and Herbis Plaza \u002F Herbis Plaza Ent (0.2 miles). \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=118&faqtqr=1\" \u003ESee all nearby attractions.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"What are some of the property amenities at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Some of the more popular amenities offered include an indoor pool, free wifi, and an on-site restaurant. \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=121&faqtqr=2\" \u003ESee all property amenities.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Which room amenities are available at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Top room amenities include a minibar, air conditioning, and a flat screen TV. \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=122&faqtqr=3\" \u003ESee all room amenities.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"What food & drink options are available at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Guests can enjoy an on-site restaurant, a lounge, and breakfast during their stay.  \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=123&faqtqr=4\" \u003ELearn more.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Is parking available at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Yes, paid private parking on-site and valet parking are available to guests. \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=127&faqtqr=5\" \u003ELearn more.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"What are some restaurants close to The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Conveniently located restaurants include Kobe Beef Ishida Herbis Plaza, La Baie, and Umeda Mix Juice. \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=129&faqtqr=6\" \u003ESee all nearby restaurants.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Are there opportunities to exercise at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Yes, guests have access to an indoor pool, a fitness center, and a sauna during their stay. \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=130&faqtqr=7\" \u003ELearn more.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Are any cleaning services offered at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Yes, dry cleaning and laundry service are offered to guests.  \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=135&faqtqr=8\" \u003ESee all property amenities.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Does The Ritz-Carlton, Osaka offer any business services?","acceptedAnswer":{"@type":"Answer","text":"Yes, it conveniently offers a business center, meeting rooms, and a banquet room.  \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=137&faqtqr=9\" \u003ESee all property amenities.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Which languages are spoken by the staff at The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"The staff speaks multiple languages, including English, French, German, Italian, Chinese, Japanese, and Vietnamese.  \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=139&faqtqr=10\" \u003ESee all property amenities.\u003C\u002Fa\u003E"}},{"@type":"Question","name":"Are there any historical sites close to The Ritz-Carlton, Osaka?","acceptedAnswer":{"@type":"Answer","text":"Many travelers enjoy visiting Osaka Castle (2.1 miles), Osaka City Central Hall (0.8 miles), and Osaka Prefectural Nakanoshima Library (0.7 miles).  \u003Ca href=\"https:\u002F\u002Fwww.tripadvisor.com\u002FHotel_Review-g298566-d302242-Reviews-The_Ritz_Carlton_Osaka-Osaka_Osaka_Prefecture_Kinki.html?m=63287&faqts=Hotel_Review&faqtup=geo%3A298566%3Bdetail%3A302242&faqtt=145&faqtqr=11\" \u003ESee all nearby attractions.\u003C\u002Fa\u003E"}}]}</script>
			</div>
			<div class="mXiGB f e y">
				<div class="IDaDx cyIij fluiI SMjpI">
					<div class="WbjZV">
						<div class="wWwSb VogJa"></div>
						<div class="CsunT l"></div>
						<div class="wWwSb VogJa">
							<div data-test-target="hr-atf-info">
								<div class="TCaFW f"></div>
								<div class="ZlaHM f k">
									<div class="WMndO f">
										<h1 id="HEADING" class="biGQs _P rRtyp">${board.name}</h1>
									</div>
									<div class="WgQFn f">
										<div class="IRzhD d _T Vt Cl">
											<div></div>
										</div>
										<button type="button" aria-label="Save to a trip"
											class="hnwyb u j _T z Orcdl pJGBL _F GxgKv _F updsl"
											data-automation="trips-save-button-item-302242">
											<svg viewBox="0 0 24 24" width="20px" height="20px"
												class="d Vb icjEL">
													<path fill-rule="evenodd" clip-rule="evenodd"
													d="M3.798 5.786A5.769 5.769 0 017.72 4.25c1.455 0 2.857.548 3.922 1.536l.005.005.341.322.332-.317a5.769 5.769 0 013.928-1.54c1.458 0 2.862.55 3.928 1.54l.004.004c1.093 1.032 1.599 2.324 1.569 3.662-.03 1.323-.578 2.643-1.5 3.785-.884 1.096-2.85 2.943-4.547 4.478a183.566 183.566 0 01-3.153 2.785l-.069.059-.489-.569.49.569-.486.416-.488-.412a101.98 101.98 0 01-7.75-7.288l-.021-.021-.02-.023c-1.725-2.115-2.203-5.32.08-7.453l.002-.002zm8.19 13.226a174.415 174.415 0 002.708-2.4c1.72-1.556 3.59-3.32 4.385-4.306.757-.939 1.148-1.948 1.168-2.877.02-.912-.313-1.795-1.097-2.536a4.269 4.269 0 00-2.904-1.138 4.269 4.269 0 00-2.903 1.136l-1.35 1.292-1.375-1.3a4.269 4.269 0 00-2.9-1.133 4.269 4.269 0 00-2.901 1.135c-1.507 1.408-1.353 3.659.042 5.385a100.45 100.45 0 007.127 6.742z"></path></svg>
										</button>
									</div>
								</div>
								<div class="irnhs f k">
									<div class="fgplF">
										<div class="MNXrs f K">
											<div class="JRWqg f H">
												<div class="hvAtG">
													<div
															class="jVDab o W f u w GOdjs">
																	<c:forEach begin="1" end="5" var="i">
			                    											<div class="circle ${i <= average ? 'active' : ''}"></div>
			                    									</c:forEach>
														</div>
													<div class="yCSYR f">
														<div
																class="tUwDs f Q1 u F_ Ph PW Pu PI z q"
																style="min-width: 145px">
																<div class="haHoo Xd Z" style="left: 130px"></div>
																
																<svg viewBox="0 0 24 24" width="16px" height="16px"
																	class="d Vb icjEL">
																		<path fill-rule="evenodd" clip-rule="evenodd"
																		d="M20.772 8.538a9.64 9.64 0 01-5.703-5.703c-.197-.538-.976-.538-1.174 0a9.588 9.588 0 01-5.697 5.703c-.538.197-.538.976 0 1.173a9.64 9.64 0 015.703 5.704c.197.537.976.537 1.174 0a9.64 9.64 0 015.703-5.704c.537-.197.537-.976 0-1.173h-.006zm-8.683 7.83a6.885 6.885 0 01-4.074-4.073c-.141-.384-.697-.384-.838 0a6.848 6.848 0 01-4.07 4.073c-.384.142-.384.698 0 .839a6.885 6.885 0 014.074 4.073c.14.384.697.384.838 0a6.885 6.885 0 014.074-4.073c.384-.141.384-.698 0-.839h-.004z"></path></svg>
																<div class="biGQs _P fiohW kSNRl osNWb">
																<a href="#REVIEWS"
														class="BMQDV _F Gv wSSLS SwZTJ FGwzt ukgoS">
																	<strong>숙소주변 즐길거리 보러가기</strong></a>
																</div>
															</div>
													</div>
												</div>
												<div class="SbOdb"></div>
											</div>
										</div>
										<div class="FhOgt H3 f u fRLPH">
											<span class="H3"><svg viewBox="0 0 24 24" width="18px"
													height="18px" class="d Vb egaXP icjEL">
														<path
														d="M11.277 20.26l.53-.532-.53.532zm.035.035l.537-.524-.008-.008-.53.532zM12 21l-.537.524.529.542.537-.534L12 21zm.688-.684l.529.532.002-.002-.53-.53zm.303-8.458l-.287-.693.287.693zm-1.98-4.783l-.288-.693.287.693zM12 2.25c-4.262 0-7.75 3.46-7.75 7.707h1.5c0-3.41 2.808-6.207 6.25-6.207v-1.5zM4.25 9.957c0 2.269 1.128 4.455 2.452 6.292 1.335 1.85 2.947 3.45 4.047 4.543l1.057-1.064c-1.108-1.1-2.634-2.62-3.887-4.356-1.262-1.75-2.169-3.62-2.169-5.415h-1.5zm6.499 10.835l.034.035 1.058-1.064-.035-.035-1.057 1.064zm.026.026l.688.706 1.074-1.048-.688-.705-1.074 1.047zm1.754.714l.688-.684-1.058-1.064-.688.684 1.058 1.064zm.69-.686c1.096-1.098 2.717-2.706 4.06-4.566 1.333-1.846 2.471-4.043 2.471-6.323h-1.5c0 1.806-.916 3.685-2.187 5.445-1.262 1.747-2.797 3.275-3.905 4.384l1.06 1.06zm6.531-10.89c0-4.246-3.488-7.706-7.75-7.706v1.5c3.442 0 6.25 2.797 6.25 6.207h1.5zm-6.051-1.193a1.838 1.838 0 01-.995 2.402l.574 1.386a3.338 3.338 0 001.807-4.362l-1.386.574zm-.995 2.402a1.838 1.838 0 01-2.402-.995l-1.386.574a3.338 3.338 0 004.362 1.807l-.574-1.386zm-2.402-.995a1.838 1.838 0 01.995-2.402l-.574-1.386a3.338 3.338 0 00-1.807 4.362l1.386-.574zm.995-2.402a1.838 1.838 0 012.402.995l1.386-.574a3.338 3.338 0 00-4.362-1.807l.574 1.386z"></path></svg></span><span
												class="fRIUK CdhWK _S "><span
												class="biGQs _P pZUbB KxBGd">${board.country},
													${board.area}</span></span>
										</div>
										<div class="FPanu f K q">
											<div class="eeVey S4 H3 f u UKvGa"
												data-blcontact="URL_HOTEL ">
												<div class="biGQs _P pZUbB KxBGd">
													<div class="kpIff f u UXKqB" id="price">${board.price}원
														/ 박</div>
												</div>
											</div>

										</div>
									</div>
									<div class="AVTFm"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="ythkR">
						<span></span>
						<div class="wWwSb VogJa">
							<div class="LOtES f e">
								  <div class="LoFmz ">
								        <img id="mainImage" class="main-image" src="/travel/resources/images/${board.imageName[0]}" alt="메인 이미지">
								        <div class="gallery">
								        <c:forEach var="image" items="${board.imageName }">
								            <div class="smallImage">
								                <img class="thumbnail" src="/travel/resources/images/${image}" alt="썸네일">
								            </div>
								            </c:forEach>
								        </div>
								    </div>
								  <script>
								        // 모든 썸네일 이미지에 클릭 이벤트를 추가
								        document.querySelectorAll('.thumbnail').forEach(function(thumbnail) {
								            thumbnail.addEventListener('click', function() {
								                // 클릭된 썸네일 이미지의 src 값을 가져와서 메인 이미지의 src 값으로 설정
								                document.getElementById('mainImage').src = this.src;
								            });
								        });
								    </script>   
								    
								<div class="VRono Gi B1 Z BB Pk PY Px PK">
									<div>
										<h2 class="biGQs _P fiohW uuBRH">여행날짜 및 인원 선택하기</h2>
									</div>
									<div class="yqHwF f v u w Pi PW Pv PI z Ezzmh Mk MJ">
										<div class="prvdF f v u _Z">
											<div class="EhmfW f u ASGZA Nj">
												<svg viewBox="0 0 24 24" width="16px" height="16px"
													class="d Vb LoFRM">
														<path fill-rule="evenodd" clip-rule="evenodd"
														d="M6.28 8.25H6A1.75 1.75 0 004.25 10v9c0 .966.784 1.75 1.75 1.75h12A1.75 1.75 0 0019.75 19v-9A1.75 1.75 0 0018 8.25h-.28c-.107-1.368-.514-2.727-1.3-3.814C15.47 3.12 13.998 2.25 12 2.25c-1.997 0-3.47.87-4.42 2.186-.786 1.087-1.193 2.446-1.3 3.814zm1.505 0h8.43c-.104-1.111-.44-2.147-1.01-2.936C14.528 4.38 13.502 3.75 12 3.75c-1.503 0-2.53.63-3.204 1.564-.57.789-.908 1.825-1.011 2.936zM6 9.75a.25.25 0 00-.25.25v9c0 .138.112.25.25.25h12a.25.25 0 00.25-.25v-9a.25.25 0 00-.25-.25H6zm5.25 6.75v-4h1.5v4h-1.5z"></path></svg>
											</div>
											<div class="biGQs _P fiohW hmDzD">여행 날짜와 인원수를 정확하게
												입력해주세요!</div>
										</div>
									</div>
									<div class="LvgWR">
										<div class="f K">
											<div class="huERZ e">
												<div class="ObEVv">
												    <div class="box">
												        <!-- Check In 버튼 -->
												        <div class="jxmuG ZIYzG KDRFa" data-automation="checkin">
												            <button class="bqhCp _T u z Gz Wh sglCU" onclick="toggleDatePicker('checkinCalendar')">
												                <div class="OdUPP">
												                    <svg viewBox="0 0 24 24" width="24px" height="24px" class="d Vb UmNoP">
												                        <path d="M4 4.5v-.75h-.75v.75H4zm16.01 0h.75v-.75h-.75v.75zm0 15.5v.75h.75V20h-.75zM4 20h-.75v.75H4V20zM8.76 3.002a.75.75 0 10-1.5-.004l1.5.004zM12.77 3a.75.75 0 00-1.5 0h1.5zm3.97-.002a.75.75 0 00-1.5.004l1.5-.004zM12 12h.75v-.75H12V12zm-4 0v-.75h-.75V12H8zm0 4h-.75v.75H8V16zm4 0v.75h.75V16H12zM4 5.25h16.01v-1.5H4v1.5zm15.26-.75V20h1.5V4.5h-1.5zm.75 14.75H4v1.5h16.01v-1.5zM4.75 20V4.5h-1.5V20h1.5zm4-12.998l.01-4-1.5-.004-.01 4 1.5.004zM12.77 7V3h-1.5v4h1.5zm3.983-.003l-.013-4-1.5.006.013 4 1.5-.006zM12 11.25H8v1.5h4v-1.5zM7.25 12v4h1.5v-4h-1.5zM8 16.75h4v-1.5H8v1.5zm4.75-.75v-4h-1.5v4h1.5z"></path>
												                    </svg>
												                </div>
												                <div class="kPQaf q">Check In</div>
												                <div class="icDdG q dibDZ">
												                    <span id="checkinDate"></span>
												                </div>
												            </button>
												            <div id="checkinCalendar" class="calendar">
												                <!-- Checkin Calendar Content Here -->
												                <input type="text" id="checkinInput">
												            </div>
												        </div>
												    </div>
											
													  <div class="box">
												        <!-- Check Out 버튼 -->
												        <div class="jxmuG ZIYzG KDRFa" data-automation="checkout">
												            <button class="bqhCp _T u z Gz Wh sglCU" onclick="toggleDatePicker('checkoutCalendar')">
												                <div class="OdUPP">
												                    <svg viewBox="0 0 24 24" width="24px" height="24px" class="d Vb UmNoP">
												                        <path d="M4 4.5v-.75h-.75v.75H4zm16.01 0h.75v-.75h-.75v.75zm0 15.5v.75h.75V20h-.75zM4 20h-.75v.75H4V20zM8.76 3.002a.75.75 0 10-1.5-.004l1.5.004zM12.77 3a.75.75 0 00-1.5 0h1.5zm3.97-.002a.75.75 0 00-1.5.004l1.5-.004zM12 12h.75v-.75H12V12zm-4 0v-.75h-.75V12H8zm0 4h-.75v.75H8V16zm4 0v.75h.75V16H12zM4 5.25h16.01v-1.5H4v1.5zm15.26-.75V20h1.5V4.5h-1.5zm.75 14.75H4v1.5h16.01v-1.5zM4.75 20V4.5h-1.5V20h1.5zm4-12.998l.01-4-1.5-.004-.01 4 1.5.004zM12.77 7V3h-1.5v4h1.5zm3.983-.003l-.013-4-1.5.006.013 4 1.5-.006zM12 11.25H8v1.5h4v-1.5zM7.25 12v4h1.5v-4h-1.5zM8 16.75h4v-1.5H8v1.5zm4.75-.75v-4h-1.5v4h1.5z"></path>
												                    </svg>
												                </div>
												                <div class="kPQaf q">Check Out</div>
												                <div class="icDdG q dibDZ">
												                    <span id="checkoutDate"></span>
												                </div>
												            </button>
												            <div id="checkoutCalendar" class="calendar">
												                <!-- Checkout Calendar Content Here -->
												                <input type="text" id="checkoutInput">
												            </div>
												        </div>
												    </div>


													<!-- Flatpickr JS -->
													<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
													<script>
													// Toggle the visibility of the date picker
													function toggleDatePicker(calendarId) {
													    var calendarElement = document.getElementById(calendarId);
													    if (calendarElement.style.display === "none" || calendarElement.style.display === "") {
													        calendarElement.style.display = "block";
													    } else {
													        calendarElement.style.display = "none";
													    }
													}

													// Check-in Calendar
													flatpickr("#checkinInput", {
													    onChange: function(selectedDates, dateStr, instance) {
													        // 날짜가 선택되면 달력 요소를 숨깁니다.
													        document.getElementById("checkinCalendar").style.display = "none";
													        // 선택된 날짜를 표시합니다.
													        document.getElementById("checkinDate").innerText = dateStr;
													    }
													});

													// Check-out Calendar
													flatpickr("#checkoutInput", {
													    onChange: function(selectedDates, dateStr, instance) {
													        // 날짜가 선택되면 달력 요소를 숨깁니다.
													        document.getElementById("checkoutCalendar").style.display = "none";
													        // 선택된 날짜를 표시합니다.
													        document.getElementById("checkoutDate").innerText = dateStr;
													    }
													});

    // 페이지가 로드될 때 캘린더 표시
    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById('checkinCalendar').classList.add('visible');
        document.getElementById('checkoutCalendar').classList.add('visible');
    });

    // 캘린더를 보이게 하기 위한 함수
    function toggleDatePicker(datePickerId) {
        var datePicker = document.getElementById(datePickerId);
        datePicker.classList.toggle('visible');
    }
</script>




													 <div class="box">
												        <!-- Guests 버튼 -->
															<div class="jxmuG WFbDt KDRFa" data-automation="guest">
																<button class="bqhCp _T u z Gz Wh sglCU wjpdQ"
																	data-automation="roomsandguests" data-toggle="modal"
																	data-target="#guestModal">
																	<div class="OdUPP">
																		<svg viewBox="0 0 24 24" width="24px" height="24px"
																			class="d Vb icjEL">
																                <path
																				d="M8 11.5l-.005.75h.01L8 11.5zM3 14l-.603-.446-.147.199V14H3zm0 6h-.75v.75H3V20zm18 0v.75h.75V20H21zm0-4h.75v-.246l-.146-.199L21 16zm-5-2.527v-.75.75zM11 16l-.604-.445-.146.199V16H11zm0 4h-.75v.75H11V20zM9.5 6.25A1.5 1.5 0 018 7.75v1.5a3 3 0 003-3H9.5zM8 7.75a1.5 1.5 0 01-1.5-1.5H5a3 3 0 003 3v-1.5zm-1.5-1.5A1.5 1.5 0 018 4.75v-1.5a3 3 0 00-3 3h1.5zM8 4.75a1.5 1.5 0 011.5 1.5H11a3 3 0 00-3-3v1.5zm9.5 3.5a1.5 1.5 0 01-1.5 1.5v1.5a3 3 0 003-3h-1.5zM16 9.75a1.5 1.5 0 01-1.5-1.5H13a3 3 0 003 3v-1.5zm-1.5-1.5a1.5 1.5 0 011.5-1.5v-1.5a3 3 0 00-3 3h1.5zm1.5-1.5a1.5 1.5 0 011.5 1.5H19a3 3 0 00-3-3v1.5zm-2.397 6.804a6.91 6.91 0 00-2.468-2.075l-.67 1.342a5.41 5.41 0 011.932 1.625l1.206-.892zm-2.468-2.075a6.91 6.91 0 00-3.14-.729l.01 1.5a5.41 5.41 0 012.46.571l.67-1.342zm-3.13-.729a6.91 6.91 0 00-3.14.73l.67 1.341a5.41 5.41 0 012.46-.571l.01-1.5zm-3.14.73a6.91 6.91 0 00-2.468 2.074l1.206.892a5.41 5.41 0 011.932-1.625l-.67-1.342zM2.25 14v6h1.5v-6h-1.5zM3 20.75h10v-1.5H3v1.5zM21.75 20v-4h-1.5v4h1.5zm-.146-4.445a6.96 6.96 0 00-2.464-2.084l-.677 1.339a5.46 5.46 0 011.933 1.635l1.208-.89zm-2.464-2.084a6.96 6.96 0 00-3.14-.748v1.5c.856 0 1.7.201 2.463.587l.677-1.339zM16 12.723a6.96 6.96 0 00-3.14.748l.677 1.339A5.46 5.46 0 0116 14.223v-1.5zm-3.14.748a6.96 6.96 0 00-2.464 2.084l1.208.89a5.46 5.46 0 011.933-1.635l-.677-1.339zM10.25 16v4h1.5v-4h-1.5zm.75 4.75h10v-1.5H11v1.5z"></path>
																            </svg>
																	</div>
																	<div class="kPQaf q">Guests</div>
																	<div class="icDdG q dibDZ">
																		<span><span class="adult-info">0</span> adults</span>
																	</div>
																</button>
															</div>
														</div>

													<!-- Modal -->
													<div class="modal fade" id="guestModal" tabindex="-1"
														role="dialog" aria-labelledby="guestModalLabel"
														aria-hidden="true">
														<div class="modal-dialog" role="document">
															<div class="modal-content">
																<div class="modal-header">
																	<h5 class="modal-title" id="guestModalLabel">손님 선택</h5>
																</div>
																<div class="modal-body">
																	<form id="guestForm">
																		<div class="form-group">
																			<label for="adultCount">성인 수</label> <select
																				class="form-control" id="adultCount">
																				<option>1</option>
																				<option>2</option>
																				<option>3</option>
																				<option>4</option>
																				<option>5</option>
																			</select>
																		</div>
																	</form>
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-secondary"
																		data-dismiss="modal">닫기</button>
																	<button type="button" class="btn btn-primary"
																		id="saveSelection">저장</button>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<button class="rmyCe _G B- z _S c Wc wSSLS mowmC w jWkoZ XDcOZ"
							data-testid="show_prices_button" data-removecommercetest="true"
							type="button" onclick="redirectToController()">
							<span class="biGQs _P ttuOS">예약하기</span>
						</button>

						<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
						<script
							src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
						<script
							src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
						<script>
							
						
						    document.getElementById('saveSelection').addEventListener('click', function() {
						        var selectedAdults = document.getElementById('adultCount').value;
						        console.log('선택된 성인 수:', selectedAdults);
						
						        // 선택된 값을 버튼 텍스트에 업데이트
						        document.querySelector('.adult-info').textContent = selectedAdults;
						
						        // 로컬 스토리지에 저장 (필요 시)
						        localStorage.setItem('selectedAdults', selectedAdults);
						
						        // 모달 닫기 및 백드롭 제거
						        $('#guestModal').modal('hide');
						        $('body').removeClass('modal-open');
						        $('.modal-backdrop').remove();
						    });
						
						    // 페이지 로드 시 저장된 값을 불러와서 버튼 텍스트에 표시
						      document.addEventListener("DOMContentLoaded", function() {
					        // 페이지가 로드될 때 실행할 초기화 함수
					        initializeGuests();
					
					        // 새로고침 버튼 클릭 시 초기화 함수 호출
					        document.querySelector('.jxmuG').addEventListener('click', function() {
					            initializeGuests();
					        });
					
					        // 초기화 함수 정의
					        function initializeGuests() {
					            // 초기화할 내용 작성
					            document.querySelector('.adult-info').textContent = '0';
					        }
					    });
						</script>


						<div class="wWwSb">
							<div class="">
								<div id="slot:728x90:inline1" class="Eufjb j u ChFsW Xd o S"></div>
							</div>
						</div>
						<div class="wWwSb">
							<div>
								<div>
									<!--  탭 내부의 HTML 구조 -->
									<div class="ppuFV _T Z BB lSnVq amYYZ" data-tab="TABS_ABOUT"
										data-section-signature="about" id="ABOUT_TAB">
										<div class="GONGi f fhUph Z BB">
											<h2 class="aFUwN Cj F1 b">
												<span class="biGQs _P fiohW uuBRH">리뷰작성</span>
											</h2>
										</div>
										<div class="ruCQl z">
											<div class="uqMDf z BGJxv YGfmd YQkjl">
												<div class="dGsKv Xe f P">
													<span class="kJyXc P">${average }</span>
													<button class="UikNM _G B- _S _W _T c G_ wSSLS TXrCr raEkE"
														type="button">
														<span class="biGQs _P ttuOS">
															<div class="jVDab o W f u w GOdjs">
                																	<c:forEach begin="1" end="5" var="i">
			                    											<div class="circle ${i <= average ? 'active' : ''}"></div>
			                    									</c:forEach>
																<span class="biGQs _P pZUbB KxBGd" style="margin-left:5px">${counts[5]} 개
																</span>
															</div>
														</span>
													</button>
												</div>
											</div>
										</div>
										<div class="ZPHZV">
											<div class="tRIJU w u">
												<div class="RZjkd">
													<div class="o">
														<div class="biGQs _P fiohW hmDzD">
															<div class="yFXuQ o W q">1점</div>
														</div>
													</div>
													<div class="gOGCN">
														<div class="OYoZn" style="width: 87.21121999999998%"></div>
													</div>
													<div class="q">
														<div class="biGQs _P fiohW biKBZ osNWb">${counts[0]}개</div>
													</div>
												</div>
												<div class="RZjkd">
													<div class="o">
														<div class="biGQs _P fiohW hmDzD">
															<div class="yFXuQ o W q">2점</div>
														</div>
													</div>
													<div class="gOGCN">
														<div class="OYoZn" style="width: 95.04132000000001%"></div>
													</div>
													<div class="q">
														<div class="biGQs _P fiohW biKBZ osNWb">${counts[1] }
															개</div>
													</div>
												</div>
												<div class="RZjkd">
													<div class="o">
														<div class="biGQs _P fiohW hmDzD">
															<div class="yFXuQ o W q">3점</div>
														</div>
													</div>
													<div class="gOGCN">
														<div class="OYoZn" style="width: 91.706448%"></div>
													</div>
													<div class="q">
														<div class="biGQs _P fiohW biKBZ osNWb">${counts[2] }
															개</div>
													</div>
												</div>
												<div class="RZjkd">
													<div class="o">
														<div class="biGQs _P fiohW hmDzD">
															<div class="yFXuQ o W q">4점</div>
														</div>
													</div>
													<div class="gOGCN">
														<div class="OYoZn" style="width: 78.822566%"></div>
													</div>
													<div class="q">
														<div class="biGQs _P fiohW biKBZ osNWb">${counts[3] }
															개</div>
													</div>
												</div>
												<div class="RZjkd">
													<div class="o">
														<div class="biGQs _P fiohW hmDzD">
															<div class="yFXuQ o W q">5점</div>
														</div>
													</div>
													<div class="gOGCN">
														<div class="OYoZn" style="width: 87.21121999999998%"></div>
													</div>
													<div class="q">
														<div class="biGQs _P fiohW biKBZ osNWb">${counts[4] }
															개</div>
													</div>
												</div>
											</div>
										</div>


										<!-- 수정된 버튼 위치 -->
										<button class="rmyCe _G B- z _S c Wc wSSLS AeLHi huqcv"
    id="openReviewModal" type="button" data-board-no="${board.boardNo}">
    <span class="biGQs _P ttuOS">
        <div class="jktzL">
            <h1 class="CpzHF q">리뷰 작성하기</h1>
        </div>
    </span>
</button>

							
									</div>
								
										<!-- 리뷰모달 구현 -->
										<div id="reviewModal" class="modal">
											<div class="modal-content">
												<span class="close">&times;</span>
												<h2>장소 평가하기</h2>
												<p>평점을 선택하세요:</p>
												<div class="rating-box">
													<!-- 평점 선택 라디오 버튼 -->
													<input type="radio" name="rating" value="5" id="rating5">
													<label for="rating5">5점</label><br> <input
														type="radio" name="rating" value="4" id="rating4">
													<label for="rating4">4점</label><br> <input
														type="radio" name="rating" value="3" id="rating3">
													<label for="rating3">3점</label><br> <input
														type="radio" name="rating" value="2" id="rating2">
													<label for="rating2">2점</label><br> <input
														type="radio" name="rating" value="1" id="rating1">
													<label for="rating1">1점</label><br>
												</div>
												<p>리뷰를 작성하세요:</p>
												<textarea id="reviewText" rows="4" cols="50"></textarea>
												<br>
												<p>사진을 첨부하세요:</p>
												<input type="file" id="reviewImage" accept="image/*">
												<br> <img id="previewImage" class="preview-img">
												<br>
												<button id="submitReview" class="btn btn-success">제출하기</button>
											</div>
										</div>

										<div class="ppuFV _T Z BB lSnVq amYYZ">
											<h2 class="aFUwN Cj F1 b">
												<span class="biGQs _P fiohW uuBRH">리뷰</span>
											</h2>
										    <div id="submittedReviews">
										        <c:forEach var="review" items="${reviewList}">
										            <div class="review-card">
										                <c:if test="${not empty review.imageName}">
										                    <img src="/travel/resources/images/${review.imageName[0]}" class="review-image">
										                </c:if>
										                <div class="review-details">
										                    <div class="review-author">작성자: ${review.memberId}</div>
										                    <div class="review-rating">평점: ${review.like}</div>
										                    <div class="review-content">내용: ${review.content}</div>
										                </div>
										            </div>
										        </c:forEach>
										    </div>
										</div>

								
									<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
									<script
										src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
									<script
										src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
$(document).ready(function() { 
    var modal = $('#reviewModal'); 
    var openModalButton = $('#openReviewModal'); 
    var closeModalButton = $('.close'); 
    var submitButton = $('#submitReview'); 
    var reviewTextArea = $('#reviewText'); 
    var reviewImage = $('#reviewImage'); 
    var previewImage = $('#previewImage'); 

    // 모달 열기
    openModalButton.on('click', function() {
        modal.show();
    });

    // 모달 닫기
    closeModalButton.on('click', function() { 
        modal.hide(); 
    });

    $(window).on('click', function(event) {
        if ($(event.target).is(modal)) {
            modal.hide();
        }
    });

    // 이미지 미리보기
    reviewImage.on('change', function(event) { 
        var file = event.target.files[0];
        if (file) {
            var reader = new FileReader();
            reader.onload = function(e) {
                previewImage.attr('src', e.target.result); 
                previewImage.show(); 
            }
            reader.readAsDataURL(file);
        } else {
            previewImage.attr('src', ''); 
            previewImage.hide(); 
        }
    });

    // 리뷰 제출
    submitButton.on('click', function() { 
        var selectedRating = $('input[name="rating"]:checked'); 
        var reviewText = reviewTextArea.val().trim(); 
        var reviewImgSrc = previewImage.attr('src'); 
        var boardNo = $('#openReviewModal').data('board-no'); // boardNo를 가져옴

        if (selectedRating.length && reviewText !== '') {
            var ratingValue = selectedRating.val(); 

            // 로그인 및 예약 확인
            $.ajax({
                type: 'POST',
                url: 'checkLoginAndPurchase.do', // 로그인 및 예약 확인 URL
                data: { boardNo: boardNo },
                dataType: 'json',
                success: function(response) {
                    if (response.isLoggedIn && response.hasPurchased) {
                        // 로그인 및 예약 확인 후 리뷰 제출
                        var formData = new FormData();
                        formData.append('rating', ratingValue);
                        formData.append('reviewText', reviewText);
                        formData.append('boardNo', boardNo); 
                        if (reviewImage[0].files[0]) { 
                            formData.append('files', reviewImage[0].files[0]); 
                        }

                        $.ajax({ 
                            type: 'POST',
                            url: 'writeReview.do',
                            data: formData,
                            processData: false,
                            contentType: false,
                            dataType: 'json',
                            success: function(response) {
                                if (response.status === 'error') {
                                    alert(response.message);
                                } else {
                                    alert("리뷰가 제출되었습니다.");

                                    // 새로운 리뷰 항목 추가
                                    var reviewItem = $('<li>').addClass('review-item').html('<p>평점: ' + ratingValue + '</p><p>리뷰 내용: ' + reviewText + '</p>'); 
                                    if (reviewImgSrc) {
                                        var imgElement = $('<img>').attr('src', reviewImgSrc).attr('alt', 'Review Image'); 
                                        reviewItem.append(imgElement);
                                    }
                                    $('#submittedReviews').append(reviewItem); 
                                    modal.hide(); 

                                    // 폼 초기화
                                    reviewTextArea.val(''); 
                                    previewImage.attr('src', '').hide(); 
                                    reviewImage.val(''); 
                                    selectedRating.prop('checked', false); 
                                }
                            },
                            error: function(error) {
                                alert("리뷰 제출에 실패했습니다.");
                                console.log(error);
                            }
                        });
                    } else {
                        if (!response.isLoggedIn) {
                            alert("로그인이 필요합니다.");
                        } else if (!response.hasPurchased) {
                            alert("구매 내역이 없습니다.");
                        }
                    }
                },
                error: function(error) {
                    alert('로그인 및 예약 확인에 실패했습니다.');
                    console.log(error);
                }
            });
        } else {
            alert('평점과 리뷰를 모두 선택해주세요.');
        }
    });
});




</script>






									<div class="wWwSb">
										<div class="ruCQl z">
											<div class="uqMDf z BGJxv xOykd dAJIw yikFK">
												<div>
													<div>
														<div class="ppuFV _T Z BB lSnVq amYYZ"
															data-tab="TABS_LOCATION"
															data-section-signature="location" id="LOCATION">
															<div>
																<div>
																	<h2 class="biGQs _P fiohW ncFvv uuBRH">주변 관광명소</h2>
																	<div class="YPYBR f"></div>
																</div>

																<div id="googleMap" style="width: 100%; height: 700px;"></div>

																<script>
        function myMap() {
            var mapOptions = {
                center: new google.maps.LatLng(48.8566, 2.3522), // 파리 좌표
                zoom: 12
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);

            // 파리 주요 명소 데이터
            var locations = [
                {lat: 48.8584, lng: 2.2945, title: '에펠탑', description: '파리의 상징적인 아이콘'},
                {lat: 48.8606, lng: 2.3376, title: '루브르 박물관', description: '세계적으로 유명한 예술 박물관'},
                {lat: 48.8529, lng: 2.3499, title: '노트르담 대성당', description: '역사적인 가톨릭 성당'},
                {lat: 48.8867, lng: 2.3431, title: '몽마르트르', description: '멋진 전망을 자랑하는 유명한 언덕'},
                {lat: 48.8738, lng: 2.2950, title: '개선문', description: '프랑스를 위해 싸운 이들을 기리는 개선문'},
                {lat: 48.8600, lng: 2.3266, title: '오르세 미술관', description: '옛 기차역에 자리 잡은 박물관'},
                {lat: 48.8675, lng: 2.3424, title: '퐁피두 센터', description: '독특한 건축 디자인의 현대 미술관'},
                {lat: 48.8610, lng: 2.3358, title: '튈르리 정원', description: '루브르와 콩코르드 광장 사이에 위치한 공공 정원'},
                {lat: 48.8566, lng: 2.3522, title: '생트 샤펠', description: '고딕 양식의 왕실 예배당'},
                {lat: 48.8530, lng: 2.3499, title: '시테 섬', description: '파리의 중심에 위치한 역사적인 섬'},
                {lat: 48.8406, lng: 2.3376, title: '판테온', description: '저명한 프랑스 인물들이 묻힌 신전'},
                {lat: 48.8583, lng: 2.2760, title: '샤이요 궁', description: '에펠탑을 감상할 수 있는 최고의 장소 중 하나'},
                {lat: 48.8049, lng: 2.1204, title: '베르사유 궁전', description: '프랑스 왕실의 화려한 궁전'},
                {lat: 48.8575, lng: 2.2950, title: '트로카데로 정원', description: '에펠탑을 배경으로 한 아름다운 공원'},
                {lat: 48.8656, lng: 2.3212, title: '샹젤리제 거리', description: '파리의 유명한 거리'},
                {lat: 48.8448, lng: 2.3749, title: '라탱 지구', description: '활기 넘치는 대학가'},
                {lat: 48.8809, lng: 2.3574, title: '피갈', description: '야간 유흥의 중심지'},
                {lat: 48.8589, lng: 2.2770, title: '파리 인류박물관', description: '인류학과 자연사에 관한 박물관'},
                {lat: 48.8615, lng: 2.3355, title: '콩코르드 광장', description: '파리의 주요 광장'},
                {lat: 48.8515, lng: 2.3562, title: '퐁트 네프', description: '파리에서 가장 오래된 다리'}
            ];

         // 마커 추가 함수
            locations.forEach(function(location) {
                var marker = new google.maps.Marker({
                    position: {lat: location.lat, lng: location.lng},
                    map: map,
                    title: location.title
                });

                // 정보창과 자세히 보기 링크 생성
                var infowindow = new google.maps.InfoWindow({
                    content: '<h3>' + location.title + '</h3>' +
                             '<p>' + location.description + '</p>' +
                             '<p><a href="#" onclick="openGoogleSearch(\'' + location.title + '\')">자세히 보기</a></p>'
                });

                // 마커 클릭 시 정보창 열기
                marker.addListener('click', function() {
                    infowindow.open(map, marker);
                });
            });
        }

        // 구글 검색 페이지로 이동하는 함수
        function openGoogleSearch(placeName) {
            var googleSearchUrl = 'https://www.google.com/search?q=' + encodeURIComponent(placeName);
            window.open(googleSearchUrl, '_blank');
        }

        // 구글 맵 API 초기화
        function initialize() {
            initMap();
        }
    </script>
																<script
																	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJdE1NKlgUopd8K2NoyWuASU8Y4ufekHY&callback=myMap"></script>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="wWwSb">
									<div>
										<div>
											<div class="AMQRv Gi Z BB YjQAT">
														<span class="biGQs _P fiohW uuBRH">주변 관광명소 추천</span>
												<div class="iBGtx f J _h _e z NK Ni qQnpg">
												    <c:forEach var="recommend" items="${recommend}">
												        <div class="ZSsAY xjaPD">
												            <div class="TzTCE w">
												                <div class="ILCbI hdCDN w">
												                    <img src="/travel/resources/images/${recommend.imageName[0]}" class="recommend-image">
												                </div>
												                <div class="DZdiH">
												                    <div class="ILCbI lxwEm w">${recommend.name}</div>
												                    <div class="ILCbI lnuPx w">
												                        <c:forEach begin="1" end="5" var="i">
												                            <div class="circle ${i <= average ? 'active' : ''}"></div>
												                        </c:forEach>
												                    </div>
												                </div>
												            </div>
												        </div>
												    </c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="wWwSb">
									<div class="ruCQl z">
										<div class="uqMDf z BGJxv xOykd dAJIw yikFK">
											<div class="uaOxz">
												<div>
													<div class="izHMK amYYZ qTXWP" data-tab="TABS_REVIEWS"
														data-section-signature="community" id="REVIEWS">
														</script>
</body>
<script type="text/javascript">
//입력폼에 캘린더를 클릭하여 날짜값을 입력해주는 jQuery 플러그인
flatpickr("#checkinInput", {
    minDate: "today", // 오늘 이후의 날짜만 선택 가능
    onChange: function(selectedDates, dateStr, instance) {
        // 선택된 날짜를 표시
        document.getElementById("checkinDate").innerText = dateStr;
        // 체크인 날짜 이후의 날짜만 선택할 수 있도록 체크아웃 캘린더 업데이트
        document.getElementById("checkoutInput")._flatpickr.set("minDate", dateStr);
    }
});

//체크아웃
flatpickr("#checkoutInput", {
    onChange: function(selectedDates, dateStr, instance) {
        // 선택된 날짜를 표시.
        document.getElementById("checkoutDate").innerText = dateStr;
    }
});



//한번 날짜를 선택하면 수정할 수 없던것을  고치기 위해 추가
//이 부분은 다른곳에서 가져온 부분 
function toggleDatePicker(calendarId) {
	//alendarElement.style.display-> display 스타일 확인
    var calendarElement = document.getElementById(calendarId);
    if (calendarElement.style.display === "none" || calendarElement.style.display === "") {
    	//요소가 없거나 숨겨진 경우 표시
        calendarElement.style.display = "block";
    } else {
    //반대로 표시되어 있을 경우 숨김
        calendarElement.style.display = "none";
    }
}


</script>
</html>
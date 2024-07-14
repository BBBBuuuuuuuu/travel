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
    background-color: gray; /* 기본 평점 색상 */
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

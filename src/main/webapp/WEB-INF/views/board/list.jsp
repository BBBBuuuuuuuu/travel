<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">

<head>
<!--  -->
<link rel="icon" id="favicon"
	href="https://static.tacdn.com/favicon.ico?v2" type="image/x-icon" />
<link rel="mask-icon" sizes="any"
	href="https://static.tacdn.com/img2/brand_refresh/application_icons/mask-icon.svg"
	color="#000000" />
<script type="application/ld+json">[{"@context":"http:\u002F\u002Fschema.org","@type":"Organization","name":"Tripadvisor","url":"https:\u002F\u002Fwww.tripadvisor.com\u002F","logo":"https:\u002F\u002Fstatic.tacdn.com\u002Fimg2\u002Fbrand_refresh\u002FTripadvisor_logoset_solid_green.svg","sameAs":["https:\u002F\u002Fwww.facebook.com\u002FTripadvisor","https:\u002F\u002Ftwitter.com\u002FTripadvisor","https:\u002F\u002Finstagram.com\u002Ftripadvisor\u002F","https:\u002F\u002Fwww.linkedin.com\u002Fcompany\u002Ftripadvisor"]},{"@context":"http:\u002F\u002Fschema.org","@type":"WebSite","name":"Tripadvisor","url":"https:\u002F\u002Fwww.tripadvisor.com\u002F","potentialAction":{"@type":"SearchAction","target":{"@type":"EntryPoint","urlTemplate":"https:\u002F\u002Fwww.tripadvisor.com\u002FSearch?q={search_term_string}"},"query-input":"required name=search_term_string"}}]</script>
<meta property="fb:pages" content="5863091683" />
<meta property="fb:pages" content="329182043776593" />
<script>window.performance && performance.mark && performance.getEntriesByType && 0 === performance.getEntriesByType("visibility-state").length && (performance.mark("visible" === document.visibilityState ? "visible" : "hidden"), document.addEventListener && document.addEventListener("visibilitychange", function () { performance.mark("visible" === document.visibilityState ? "visible" : "hidden") }, !1));</script>
<title>리스트페이지</title>
<link rel="canonical" href="https://www.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="en"
	href="https://www.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="en-GB"
	href="https://www.tripadvisor.co.uk/Hotels" />
<link rel="alternate" hrefLang="en-CA"
	href="https://www.tripadvisor.ca/Hotels" />
<link rel="alternate" hrefLang="fr-CA"
	href="https://fr.tripadvisor.ca/Hotels" />
<link rel="alternate" hrefLang="it"
	href="https://www.tripadvisor.it/Hotels" />
<link rel="alternate" hrefLang="es"
	href="https://www.tripadvisor.es/Hotels" />
<link rel="alternate" hrefLang="de"
	href="https://www.tripadvisor.de/Hotels" />
<link rel="alternate" hrefLang="fr"
	href="https://www.tripadvisor.fr/Hotels" />
<link rel="alternate" hrefLang="ja"
	href="https://www.tripadvisor.jp/Hotels" />
<link rel="alternate" hrefLang="zh-Hans"
	href="https://cn.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="en-IN"
	href="https://www.tripadvisor.in/Hotels" />
<link rel="alternate" hrefLang="sv"
	href="https://www.tripadvisor.se/Hotels" />
<link rel="alternate" hrefLang="nl"
	href="https://www.tripadvisor.nl/Hotels" />
<link rel="alternate" hrefLang="pt"
	href="https://www.tripadvisor.com.br/Hotels" />
<link rel="alternate" hrefLang="tr"
	href="https://www.tripadvisor.com.tr/Hotels" />
<link rel="alternate" hrefLang="da"
	href="https://www.tripadvisor.dk/Hotels" />
<link rel="alternate" hrefLang="es-MX"
	href="https://www.tripadvisor.com.mx/Hotels" />
<link rel="alternate" hrefLang="en-IE"
	href="https://www.tripadvisor.ie/Hotels" />
<link rel="alternate" hrefLang="ar"
	href="https://ar.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="ar-EG"
	href="https://www.tripadvisor.com.eg/Hotels" />
<link rel="alternate" hrefLang="de-AT"
	href="https://www.tripadvisor.at/Hotels" />
<link rel="alternate" hrefLang="el"
	href="https://www.tripadvisor.com.gr/Hotels" />
<link rel="alternate" hrefLang="en-AU"
	href="https://www.tripadvisor.com.au/Hotels" />
<link rel="alternate" hrefLang="en-MY"
	href="https://www.tripadvisor.com.my/Hotels" />
<link rel="alternate" hrefLang="en-NZ"
	href="https://www.tripadvisor.co.nz/Hotels" />
<link rel="alternate" hrefLang="en-PH"
	href="https://www.tripadvisor.com.ph/Hotels" />
<link rel="alternate" hrefLang="en-SG"
	href="https://www.tripadvisor.com.sg/Hotels" />
<link rel="alternate" hrefLang="en-ZA"
	href="https://www.tripadvisor.co.za/Hotels" />
<link rel="alternate" hrefLang="es-AR"
	href="https://www.tripadvisor.com.ar/Hotels" />
<link rel="alternate" hrefLang="es-CL"
	href="https://www.tripadvisor.cl/Hotels" />
<link rel="alternate" hrefLang="es-CO"
	href="https://www.tripadvisor.co/Hotels" />
<link rel="alternate" hrefLang="es-PE"
	href="https://www.tripadvisor.com.pe/Hotels" />
<link rel="alternate" hrefLang="es-VE"
	href="https://www.tripadvisor.com.ve/Hotels" />
<link rel="alternate" hrefLang="id"
	href="https://www.tripadvisor.co.id/Hotels" />
<link rel="alternate" hrefLang="he"
	href="https://www.tripadvisor.co.il/Hotels" />
<link rel="alternate" hrefLang="ko"
	href="https://www.tripadvisor.co.kr/Hotels" />
<link rel="alternate" hrefLang="nb"
	href="https://no.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="pt-PT"
	href="https://www.tripadvisor.pt/Hotels" />
<link rel="alternate" hrefLang="ru"
	href="https://www.tripadvisor.ru/Hotels" />
<link rel="alternate" hrefLang="th"
	href="https://th.tripadvisor.com/Hotels" />
<link rel="alternate" hrefLang="vi"
	href="https://www.tripadvisor.com.vn/Hotels" />
<link rel="alternate" hrefLang="zh-Hant"
	href="https://www.tripadvisor.com.tw/Hotels" />
<link rel="alternate" hrefLang="de-CH"
	href="https://www.tripadvisor.ch/Hotels" />
<link rel="alternate" hrefLang="fr-CH"
	href="https://fr.tripadvisor.ch/Hotels" />
<link rel="alternate" hrefLang="it-CH"
	href="https://it.tripadvisor.ch/Hotels" />
<link rel="alternate" hrefLang="en-HK"
	href="https://en.tripadvisor.com.hk/Hotels" />
<link rel="alternate" hrefLang="fr-BE"
	href="https://fr.tripadvisor.be/Hotels" />
<link rel="alternate" hrefLang="nl-BE"
	href="https://www.tripadvisor.be/Hotels" />
<link rel="alternate" hrefLang="zh-hk"
	href="https://www.tripadvisor.com.hk/Hotels" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/xztejajnpzxg-c.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/cjerkd.PPGnhl3.css"
	crossorigin="" />
<link rel="stylesheet"
	href="https://static.tacdn.com/assets/p7jq7m.4Ujcuf7.css"
	crossorigin="" />
<script src="https://static.tacdn.com/assets/uiysebtawutl-c.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/544p0pr403vd-c.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/gg6fk5.IaofDny.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/mqwhqn.EaBuWf8.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/pn8thk.CcVtElK.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/8cre3h.59xo0IH.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/nflkuf.JxxwklV.js" async=""
	crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/cjerkd.PPGnhl3.en-US.js"
	async="" crossorigin="" fetchpriority="low"></script>
<script src="https://static.tacdn.com/assets/p7jq7m.4Ujcuf7.js" async=""
	crossorigin="" fetchpriority="low"></script>


<!-- Include Flatpickr CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<!-- Include Flatpickr JS -->
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<style>
/* CSS for the popup dialog */
.popup {
	position: absolute;
	background-color: white;
	padding: 20px;
	border: 1px solid #ccc;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	z-index: 1000;
	display: none;
	margin-top: -11.4%;
	margin-left: -49%;
}

.popup label {
	display: block;
	margin-bottom: 10px;
}

.popup input {
	margin-bottom: 10px;
	padding: 5px;
	width: 100%;
	box-sizing: border-box;
}

.popup button {
	padding: 10px 20px;
	background-color: #007bff;
	color: white;
	border: none;
	cursor: pointer;
}

.popup button:hover {
	background-color: #0056b3;
}
/* 여기에 CSS 스타일링을 추가하세요 */
#hotelList {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px; /* 여백 추가 */
    box-sizing: border-box;
}

.hotel-card {
	display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 20px;
    padding: 20px;
    border: 1px solid #ccc;
    width: calc(56% - 20px);
    min-width: 560px;
    height: 400px;
    box-sizing: border-box;
    transition: all 0.3s ease;
    overflow: hidden;
}

.hotel-image {
    width: 100%;
    height: 250px; /* 이미지 높이 조정 */
    margin-bottom: 20px;
    overflow: hidden;
}

.hotel-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    border-radius: 8px;
    transition: transform 0.3s ease; /* 이미지 hover 시 효과를 위한 transition */
}

.hotel-details {
    width: 100%;
}

.hotel-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.hotel-rating {
    font-size: 16px;
    color: #666;
    margin-bottom: 10px;
}

.book-button {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    border-radius: 4px;
    cursor: pointer;
    align-self: flex-start;
}

.book-button:hover {
    background-color: #45a049;
}

@media screen and (max-width: 768px) {
    .hotel-card {
        width: 100%; /* 모바일 화면에서 카드를 한 줄에 하나씩 표시 */
        margin-bottom: 20px;
    }
}


.datepicker-container {
    position: absolute;
    background-color: white;
    border: 1px solid #ccc;
    padding: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    z-index: 1000;
    display: none; /* 기본적으로 숨김 처리 */
}

.circle{
	width:10px;
	height: 10px;
	background-color: white;
	border: 0.1px solid gray;
	border-radius:50%;
	display: inline-block;
}
.active{
	background-color: #00AA6C;
}
</style>
</head>

<body>
<%@ include file="/resources/includes/header.jsp" %> 
	<main>
		<!--$-->
		<span>
			<div></div>
			<c:if test="${param.category == 'stay' }">
			<div class="HyLIU w GA Gm z">
				<img class="ahLpu _C s w _Z"
					src="https://static.tacdn.com/img2/branding/homepage/hotel-hero-default-4.jpg" />
				<div class="WhAxR f e u j c z M-">
					<div class="biGQs _P socJU mowmC eIegw">
					</div>
					<div class="tXYlE u Gi">
						<div class="gZifJ">
							<div>
								<div class="HREWK t l s _U S ijEOu"></div>
								<div class="ctKgY">
									<div class="ZjkxF f e Wh z _f"
										data-test-attribute="typeahead-trip_search_Hotels">
										<form role="search" action="/list.jsp">
											<input type="hidden" name="searchSessionId"
												value="001d380a05179a9c.ssid" /> <input type="hidden"
												name="searchNearby" value="false" /> <input type="hidden"
												name="ssrc" value="h" />
											<div class="oKjvH f u Ma Nk MA NM DERJF">
												<div class="F1 f u Q2">
													<button type="submit" formaction="/list.jsp"
														class="LhcRH _G _H B- G_ _S t u j H0" title="Search"
														aria-label="Search" tabindex="-1">
														<svg viewBox="0 0 24 24" width="24px" height="24px"
															class="d Vb UmNoP">
                											  <path fill-rule="evenodd"
																clip-rule="evenodd"
																d="M9.74 3.75a5.99 5.99 0 100 11.98 5.99 5.99 0 000-11.98zM2.25 9.74a7.49 7.49 0 1113.3 4.728l5.44 5.442-1.06 1.06-5.44-5.439A7.49 7.49 0 012.25 9.74z"></path>
               											 </svg>
													</button>
													<input type="search" autoComplete="off" autoCorrect="off"
														autoCapitalize="none" spellcheck="false" required name="q"
														class="hUpcN _G G_ B- z F1 _J w Cj R0 NBfGt H3"
														placeholder="검색" title="Search" role="searchbox"
														aria-label="Search" aria-controls="typeahead_results"
														aria-autocomplete="list" value="" />
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
						<div class="QWjIT e">
							<div class="GRZMb Fh Q2" data-automation="hotel-picker-new">
								<div class="KFWPn">
									<button aria-disabled="false" type="button"
										class="WRyMy z Gz _S q o W f u G mnpxG F1 wSSLS"
										aria-label="Enter the dates." aria-haspopup="dialog"
										id="openDateRangeCalendarBtn">
										<span class="biGQs _P fiohW uWleQ"> <svg
												viewBox="0 0 24 24" width="18px" height="18px"
												class="d Vb icjEL">
									                <path
													d="M4 4.5v-.75h-.75v.75H4zm16.01 0h.75v-.75h-.75v.75zm0 15.5v.75h.75V20h-.75zM4 20h-.75v.75H4V20zM8.76 3.002a.75.75 0 10-1.5-.004l1.5.004zM12.77 3a.75.75 0 00-1.5 0h1.5zm3.97-.002a.75.75 0 00-1.5.004l1.5-.004zM12 12h.75v-.75H12V12zm-4 0v-.75h-.75V12H8zm0 4h-.75v.75H8V16zm4 0v.75h.75V16H12zM4 5.25h16.01v-1.5H4v1.5zm15.26-.75V20h1.5V4.5h-1.5zm.75 14.75H4v1.5h16.01v-1.5zM4.75 20V4.5h-1.5V20h1.5zm4-12.998l.01-4-1.5-.004-.01 4 1.5.004zM12.77 7V3h-1.5v4h1.5zm3.983-.003l-.013-4-1.5.006.013 4 1.5-.006zM12 11.25H8v1.5h4v-1.5zM7.25 12v4h1.5v-4h-1.5zM8 16.75h4v-1.5H8v1.5zm4.75-.75v-4h-1.5v4h1.5z"></path>
									              </svg> <!-- -->날짜 선택
										</span>
									</button>
								</div>
								<div class="KFWPn iUCeN">
								    <button id="guestButton" aria-disabled="false"
								            type="button" class="WRyMy z Gz _S q o W f u G wSSLS"
								            aria-label="Enter the number of guests. The selected number of guests is 2."
								            aria-haspopup="dialog" onclick="openPopup(event)">
								        <span class="biGQs _P fiohW uWleQ">
								            <div class="yzRfM f">
								                <div>
								                    <svg viewBox="0 0 24 24" width="18px" height="18px" class="d Vb UmNoP">
								                        <path d="M8 11.5l-.005.75h.01L8 11.5zM3 14l-.603-.446-.147.199V14H3zm0 6h-.75v.75H3V20zm18 0v.75h.75V20H21zm0-4h.75v-.246l-.146-.199L21 16zm-5-2.527v-.75.75zM11 16l-.604-.445-.146.199V16H11zm0 4h-.75v.75H11V20zM9.5 6.25A1.5 1.5 0 018 7.75v1.5a3 3 0 003-3H9.5zM8 7.75a1.5 1.5 0 01-1.5-1.5H5a3 3 0 003 3v-1.5zm-1.5-1.5A1.5 1.5 0 018 4.75v-1.5a3 3 0 00-3 3h1.5zM8 4.75a1.5 1.5 0 011.5 1.5H11a3 3 0 00-3-3v1.5zm9.5 3.5a1.5 1.5 0 01-1.5 1.5v1.5a3 3 0 003-3h-1.5zM16 9.75a1.5 1.5 0 01-1.5-1.5H13a3 3 0 003 3v-1.5zm-1.5-1.5a1.5 1.5 0 011.5-1.5v-1.5a3 3 0 00-3 3h1.5zm1.5-1.5a1.5 1.5 0 011.5 1.5H19a3 3 0 00-3-3v1.5zm-2.397 6.804a6.91 6.91 0 00-2.468-2.075l-.67 1.342a5.41 5.41 0 011.932 1.625l1.206-.892zm-2.468-2.075a6.91 6.91 0 00-3.14-.729l.01 1.5a5.41 5.41 0 012.46.571l.67-1.342zm-3.13-.729a6.91 6.91 0 00-3.14.73l.67 1.341a5.41 5.41 0 012.46-.571l.01-1.5zm-3.14.73a6.91 6.91 0 00-2.468 2.074l1.206.892a5.41 5.41 0 011.932-1.625l-.67-1.342zM2.25 14v6h1.5v-6h-1.5zM3 20.75h10v-1.5H3v1.5zM21.75 20v-4h-1.5v4h1.5zm-.146-4.445a6.96 6.96 0 00-2.464-2.084l-.677 1.339a5.46 5.46 0 011.933 1.635l1.208-.89zm-2.464-2.084a6.96 6.96 0 00-3.14-.748v1.5c.856 0 1.7.201 2.463.587l.677-1.339zM16 12.723a6.96 6.96 0 00-3.14.748l.677 1.339A5.46 5.46 0 0116 14.223v-1.5zm-3.14.748a6.96 6.96 0 00-3.14-.748l.677 1.339a5.46 5.46 0 011.933-1.635l-.677-1.339zM12 14.75v6h1.5v-6H12z"></path>
								                    </svg>
								                    <!-- 숫자는 아래에 표시됩니다. -->
								                    <span id="guestCount">2</span>
								                </div>
								            </div>
								        </span>
								    </button>
								
								    <div id="popup" class="popup">
								        <label for="guests">Guests:</label>
								        <input type="number" id="guests" name="guests" min="1" max="20" value="2">
								        <button onclick="applySelection()">Apply</button>
								    </div>
								</div>
								<!-- JavaScript -->
								<script>
							        let selectedStartDate = null;
							        let selectedEndDate = null;
							
							        const dateRangePicker = flatpickr("#openDateRangeCalendarBtn", {
							            mode: "range", // 범위 선택 모드
							            dateFormat: "Y-m-d", // 선택된 날짜 형식
							            onClose: function(selectedDates, dateStr, instance) {
							                // 선택한 날짜를 데이터로 저장
							                if (selectedDates.length > 0) {
							                    selectedStartDate = selectedDates[0];
							                    selectedEndDate = selectedDates[selectedDates.length - 1];
							                    console.log("시작 날짜:", selectedStartDate);
							                    console.log("끝 날짜:", selectedEndDate);
							                    // 여기에 데이터를 저장하는 코드를 추가할 수 있습니다.
							                    // 예를 들어, Ajax 요청을 보내거나 다른 처리를 할 수 있습니다.
							                }
							            }
							        });
							    </script>

								<script>
								    function openPopup(event) {
								        var popup = document.getElementById('popup');
								        var button = document.getElementById('guestButton');
								        var buttonRect = button.getBoundingClientRect(); // 버튼의 위치와 크기 가져오기
								        var scrollTop = window.pageYOffset || document.documentElement.scrollTop;
								
								        popup.style.top = (buttonRect.bottom + scrollTop) + 'px'; // 버튼의 아래쪽으로 위치 설정
								        popup.style.left = buttonRect.left + 'px';  // 버튼의 왼쪽으로 위치 설정
								        popup.style.display = 'block'; // 팝업 보이기
								    }
								
								    function applySelection() {
								        var selectedGuests = document.getElementById('guests').value;

								        // 버튼 내부의 숫자 업데이트
								        var buttonGuests = document.querySelector('#guestButton .f div #guestCount');
								        buttonGuests.innerText = selectedGuests;

								        // 팝업 숨기기
								        var popup = document.getElementById('popup');
								        popup.style.display = 'none';
								    }
								</script>

							</div>
						</div>
						<button class="rmyCe _G B- z _S c Wc wSSLS AeLHi huqcv"
							type="button">
							<span class="biGQs _P ttuOS"><div class="jktzL">
									<svg viewBox="0 0 24 24" width="20px" height="20px"
										class="d Vb UmNoP">
											<path fill-rule="evenodd" clip-rule="evenodd"
											d="M9.74 3.75a5.99 5.99 0 100 11.98 5.99 5.99 0 000-11.98zM2.25 9.74a7.49 7.49 0 1113.3 4.728l5.44 5.442-1.06 1.06-5.44-5.439A7.49 7.49 0 012.25 9.74z"></path></svg>
								</div>
								<h1 class="CpzHF q">검색</h1></span>
						</button>
					</div>
				</div>
			</div>
			</c:if> <!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
			<c:if test="${param.category == 'activity' }">
			<div class="HyLIU w GA Gm z">
				<img class="ahLpu _C s w _Z"
					src="https://static.tacdn.com/img2/tc/hero/redesign/TC2024_BucketList_desktop-c1.jpg" />
				<div class="WhAxR f e u j c z M-">
					<div class="biGQs _P socJU mowmC eIegw">
					</div>
					<div class="tXYlE u Gi">
						<div class="gZifJ">
							<div>
								<div class="HREWK t l s _U S ijEOu"></div>
								<div class="ctKgY">
									<div class="ZjkxF f e Wh z _f"
										data-test-attribute="typeahead-trip_search_Hotels">
										<form role="search" action="/list.jsp">
											<input type="hidden" name="searchSessionId"
												value="001d380a05179a9c.ssid" /> <input type="hidden"
												name="searchNearby" value="false" /> <input type="hidden"
												name="ssrc" value="h" />
											<div class="oKjvH f u Ma Nk MA NM DERJF">
												<div class="F1 f u Q2">
													<button type="submit" formaction="/list.jsp"
														class="LhcRH _G _H B- G_ _S t u j H0" title="Search"
														aria-label="Search" tabindex="-1">
														<svg viewBox="0 0 24 24" width="24px" height="24px"
															class="d Vb UmNoP">
                											  <path fill-rule="evenodd"
																clip-rule="evenodd"
																d="M9.74 3.75a5.99 5.99 0 100 11.98 5.99 5.99 0 000-11.98zM2.25 9.74a7.49 7.49 0 1113.3 4.728l5.44 5.442-1.06 1.06-5.44-5.439A7.49 7.49 0 012.25 9.74z"></path>
               											 </svg>
													</button>
													<input type="search" autoComplete="off" autoCorrect="off"
														autoCapitalize="none" spellcheck="false" required name="q"
														class="hUpcN _G G_ B- z F1 _J w Cj R0 NBfGt H3"
														placeholder="검색" title="Search" role="searchbox"
														aria-label="Search" aria-controls="typeahead_results"
														aria-autocomplete="list" value="" />
												</div>
											</div>
										</form>

									</div>
								</div>
							</div>
						</div>
						<div class="QWjIT e">
							<div class="GRZMb Fh Q2" data-automation="hotel-picker-new">

							</div>
						</div>
						<button class="rmyCe _G B- z _S c Wc wSSLS AeLHi huqcv"
							type="button">
							<span class="biGQs _P ttuOS"><div class="jktzL">
									<svg viewBox="0 0 24 24" width="20px" height="20px"
										class="d Vb UmNoP">
											<path fill-rule="evenodd" clip-rule="evenodd"
											d="M9.74 3.75a5.99 5.99 0 100 11.98 5.99 5.99 0 000-11.98zM2.25 9.74a7.49 7.49 0 1113.3 4.728l5.44 5.442-1.06 1.06-5.44-5.439A7.49 7.49 0 012.25 9.74z"></path></svg>
								</div>
								<h1 class="CpzHF q">검색</h1></span>
						</button>
					</div>
				</div>
			</div>
			</c:if>
			<div id="hotelList">
			    <c:forEach var="board" items="${boardList}">
			        <a href="getBoard.do?no=${board.boardNo}" style="text-decoration: none; color: inherit;">
			            <div class="hotel-card">
			                <div class="hotel-image">
			                    <img src="/travel/resources/images/${board.imageName[0] }" alt="${board.name}">
			                </div>
			                <div class="hotel-details">
			                    <div class="hotel-title">제목 : ${board.name}</div>
			                    <div class="hotel-rating">평점 : 
			                    <%-- <c:if test="${board.like!=0.0} "> --%>
			                    <c:forEach begin="1" end="5" var="i">
			                    	<div class="circle ${i <= board.like ? 'active' : ''}"></div>
			                    </c:forEach>
			                    <%-- </c:if> --%>
								</div>
			                </div>
			            </div>
			        </a>
			    </c:forEach>
			</div>
			
	</main>
	<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
	<script type="application/ld+json">[{"@context":"http:\u002F\u002Fschema.org","@type":"Hotel","name":"Ikos Dassia","description":"","url":"\u002FHotel_Review-g939713-d12279503-Reviews-Ikos_Dassia-Dassia_Corfu_Ionian_Islands.html","image":"https:\u002F\u002Fdynamic-media-cdn.tripadvisor.com\u002Fmedia\u002Fphoto-o\u002F2a\u002Fab\u002F0d\u002F17\u002Fikos-dassia.jpg?w=600&h=400&s=1","address":{"address":{"@type":"PostalAddress","addressCountry":"Greece","addressLocality":"","addressRegion":"","postalCode":"49100","streetAddress":"Dassia 49100 Greece"}}},{"@context":"http:\u002F\u002Fschema.org","@type":"Hotel","name":"Rixos  Premium Belek - The Land Of Legends Access","description":"","url":"\u002FHotel_Review-g312725-d507974-Reviews-Rixos_Premium_Belek_The_Land_Of_Legends_Access-Belek_Serik_District_Turkish_Mediterrane.html","image":"https:\u002F\u002Fdynamic-media-cdn.tripadvisor.com\u002Fmedia\u002Fphoto-o\u002F26\u002Fa4\u002F56\u002F3d\u002Frixos-premium-belek.jpg?w=600&h=400&s=1","address":{"address":{"@type":"PostalAddress","addressCountry":"T\u00FCrkiye","addressLocality":"","addressRegion":"","postalCode":"07500","streetAddress":"Mahallesi Kongre Caddesi, Belek 07500 T\u00FCrkiye"}}},{"@context":"http:\u002F\u002Fschema.org","@type":"Hotel","name":"Voyage Sorgun","description":"","url":"\u002FHotel_Review-g297968-d581323-Reviews-Voyage_Sorgun-Side_Manavgat_Turkish_Mediterranean_Coast.html","image":"https:\u002F\u002Fdynamic-media-cdn.tripadvisor.com\u002Fmedia\u002Fphoto-o\u002F2a\u002F03\u002F6f\u002F33\u002Fdiscover-pure-paradise.jpg?w=600&h=400&s=1","address":{"address":{"@type":"PostalAddress","addressCountry":"T\u00FCrkiye","addressLocality":"","addressRegion":"","postalCode":"07600","streetAddress":"Titreyeng\u00F6l Mevkii Manavgat Sorgun Y\u00F6resi, Side, Manavgat 07600 T\u00FCrkiye"}}},{"@context":"http:\u002F\u002Fschema.org","@type":"Hotel","name":"Voyage Belek Golf And Spa","description":"","url":"\u002FHotel_Review-g312725-d647824-Reviews-Voyage_Belek_Golf_And_Spa-Belek_Serik_District_Turkish_Mediterranean_Coast.html","image":"https:\u002F\u002Fdynamic-media-cdn.tripadvisor.com\u002Fmedia\u002Fphoto-o\u002F29\u002Fca\u002Fed\u002F6b\u002Fvoyage-belek-golf-spa.jpg?w=600&h=400&s=1","address":{"address":{"@type":"PostalAddress","addressCountry":"T\u00FCrkiye","addressLocality":"","addressRegion":"","postalCode":"07506","streetAddress":"Belek Mahallesi G\u00FCn\u00FCbirlik Caddesi No: 2, Belek 07506 T\u00FCrkiye"}}}]</script>
	</div>
	<div data-curated-shelf-id="6648" class="IDaDx mvTrV cyIij fluiI SMjpI">
		<div class="VzUjD A Fi mowmC">
			<div class="LNjrQ A">
				<h2 class="biGQs _P fiohW uPlAb uuBRH">
					</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

.container {
	max-width: 1100px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	overflow: hidden; /* Clear float */
}

form {
	display: flex;
	flex-wrap: wrap;
	margin: auto;
	margin-top: 3%
}

form label {
	width: 150px;
	font-weight: bold;
	margin-bottom: 10px;
	margin-left: 3%;
}

form input[type="text"], form input[type="submit"], form input[type="password"]
	{
	width: calc(50% - 190px);
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	box-sizing: border-box;
}

form input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 3px;
	cursor: pointer;
	margin-top: 10px;
}

.image-container img {
    max-width: 100%; /* 이미지가 부모 요소를 넘어서지 않도록 */
    height: auto; /* 이미지의 비율을 유지하면서 */
    display: block; /* 이미지를 블록 요소로 만들어 불필요한 공백을 없앱니다. */
}

</style>
</head>
<body>

	<%@ include file="/resources/includes/header.jsp"%>

	<div class="container">
		<div class="image-container">
			<img
				src="https://static.tacdn.com/img2/branding/homepage/hotel-hero-default-4.jpg"
				alt="예시 이미지">
		</div>
		<form action="book.do" method="post">
		<input type="hidden" name="board_no" value="${booking.board_no}" readonly="readonly">
			<label>숙소 이름:</label>
			<input type="text" name="boardName" value="${boardName}" readonly="readonly"><br> 
			<label>체크인:</label>
			<input type="text" name="start_date" value="${booking.start_date}"readonly="readonly"><br> 
			<label>체크아웃:</label> <input type="text" name="end_date" value="${booking.end_date}" readonly="readonly"><br> 
			<label>인원수:</label> <input type="text" name="people_count" value="${booking.people_count}"readonly="readonly"><br> 
			<label>원/박:</label> <input type="text" name="price" value="${booking.price}" readonly="readonly"><br> 
			<label>총:</label> <input type="text" name="total_price" value="${booking.total_price}"readonly="readonly"><br> 
			<label>아이디:</label> <input type="text" name="member_id" value="${userId}" readonly="readonly"><br>
			<label>비밀번호 확인:</label> <input type="password" name="confirmPass"><br>
			<label>은행사:</label> <input type="text" name="bank"><br>
			<label>카드 번호:</label> <input type="text" name="cardNum"><br>

			<input type="submit" value="결제하기">
		</form>
	</div>


</body>
</html>

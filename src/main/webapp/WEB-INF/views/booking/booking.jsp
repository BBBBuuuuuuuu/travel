<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="book.do" method="post">
	<input type="hidden" name="board_no" value="${booking.board_no }" readonly="readonly">
		숙소 이름 :<input type="text" name="boardName" value="${boardName}" readonly="readonly">
		체크인<input type="text" name="start_date" value="${booking.start_date}" readonly="readonly">
		체크아웃<input type="text" name="end_date" value="${booking.end_date}" readonly="readonly">
		인원수<input type="text" name="people_count" value="${booking.people_count}"readonly="readonly">
		원/박<input type="text" name="price" value="${booking.price}"readonly="readonly">
		총 <input type="text" name="total_price" value="${booking.total_price}" readonly="readonly">
		아이디<input type="text" name="member_id" value="${userId }" readonly="readonly">
		비밀번호 확인<input type="text" name="confirmPass">
		은행사<input type="text" name="bank">
		카드 번호<input type="text" name="cardNum">
		<input type="submit" value="결제하기">
	</form>
</body>
</html>
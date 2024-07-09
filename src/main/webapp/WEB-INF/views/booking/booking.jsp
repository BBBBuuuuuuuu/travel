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
		숙소 이름 :<input type="text" name="board_name" value="${boardName}" disabled="disabled">
		체크인<input type="text" name="start_date" value="${booking.start_date}" disabled="disabled">
		체크아웃<input type="text" name="end_date" value="${booking.end_date}" disabled="disabled">
		인원수<input type="number" name="people_count" value="${booking.people_count}" disabled="disabled">
		원/박<input type="number" name="price" value="${booking.price}" disabled="disabled">
		총 <input type="number" name="total_price" value="${booking.total_price}" disabled="disabled">
		아이디<input type="text" name="member_id" value="${userId }" disabled="disabled">
		비밀번호 확인<input type="text" name="confirm_pass">
		은행사<input type="text" name="bank">
		카드 번호<input type="text" name="cardNum">
		<input type="submit" value="결제하기">
	</form>
</body>
</html>
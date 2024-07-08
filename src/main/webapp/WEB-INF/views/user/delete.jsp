<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>회원 탈퇴</title>
</head>
<body>
    <h2>회원 탈퇴</h2>
    <form action="deleteUser.do" method="post">
        <div>
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" readonly>
        </div>
        <div>
            <button type="submit">Delete</button>
        </div>
    </form>
</body>
</html>

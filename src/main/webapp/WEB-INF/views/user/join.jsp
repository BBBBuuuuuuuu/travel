<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
</head>
<body>
    <h2>회원가입</h2>
    <form action="join.do" method="post">
        <div>
            <label for="id">아이디:</label>
            <input type="text" id="id" name="id" required>
            <c:if test="${not empty idErrorMessage}">
                <span style="color: red;">${idErrorMessage}</span>
            </c:if>
        </div>
        <div>
            <label for="password">비밀번호:</label>
            <input type="password" id="password" name="password" required>
            <c:if test="${not empty passwordErrorMessage}">
                <span style="color: red;">${passwordErrorMessage}</span>
            </c:if>
        </div>
        <div>
            <label for="name">이름:</label>
            <input type="text" id="name" name="name" required>
            <c:if test="${not empty nameErrorMessage}">
                <span style="color: red;">${nameErrorMessage}</span>
            </c:if>
        </div>
        <div>
            <label for="email">이메일:</label>
            <input type="email" id="email" name="email" required>
            <c:if test="${not empty emailErrorMessage}">
                <span style="color: red;">${emailErrorMessage}</span>
            </c:if>
        </div>
        <div>
            <label for="phone">전화번호:</label>
            <input type="text" id="phone" name="phone" required>
            <c:if test="${not empty phoneErrorMessage}">
                <span style="color: red;">${phoneErrorMessage}</span>
            </c:if>
        </div>
        <div>
            <button type="submit">회원가입</button>
        </div>
        <div>
            <c:if test="${not empty errorMessage}">
                <span style="color: red;">${errorMessage}</span>
            </c:if>
        </div>
    </form>
</body>
</html>

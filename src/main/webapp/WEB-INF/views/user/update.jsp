<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
</head>
<body>
    <h2>회원정보 수정</h2>
    <form action="updateMember.do" method="post">
        
        <div>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
        </div>
        <div>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name">
        </div>
        <div>
            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone">
        </div>
        <div>
            <label for="email">Email:</label>
            <input type="text" id="email" name="email">
        </div>
        <div>
            <button type="submit">Update</button>
        </div>
    </form>
    <c:if test="${not empty message}">
        <span>${message}</span>
    </c:if>
   <form action="deleteMember.do" method="post">
        <input type="hidden" name="id" value="${sessionScope.userId}">
        <button type="submit">Delete</button>
    </form>
</body>
</html>

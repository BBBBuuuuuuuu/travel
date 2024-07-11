<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원정보 수정</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }

        main {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container2 {
           background-color: #fff;
		    padding: 20px;
		    border-radius: 8px;
		    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
		    width: 25%;
		    border-top: 2px solid #333;
		    margin-top: -10%;
        }

        .container2 h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .container2 form {
            margin-bottom: 20px; /* 폼 사이의 간격 설정 */
        }

        .container2 label {
            margin-bottom: 5px;
            display: block;
        }

        .container2 input[type="text"],
        .container2 input[type="password"] {
               padding: 8px;
			    margin-bottom: 10px;
			    border: 1px solid #ccc;
			    border-radius: 4px;
			    font-size: 14px;
			    width: calc(100% - 16px);
			    margin-bottom: 5%;
        }

        .container2 button[type="submit"],
        .container2 button[type="button"] {
            background-color: #4CAF50;
		    color: white;
		    border: none;
		    padding: 15px 20px;
		    text-align: center;
		    text-decoration: none;
		    display: inline-block;
		    font-size: 15px;
		    border-radius: 4px;
		    cursor: pointer;
		    width: 90%;
		    margin-left: 5%;
		    margin-top: 2px;
        }

        .container2 button[type="submit"]:hover,
        .container2 button[type="button"]:hover {
            background-color: #45a049;
        }

        .delete-form {
            text-align: left; /* 삭제 폼 가운데 정렬 */
        }
    </style>
</head>
<body>
    <%@ include file="/resources/includes/header.jsp" %>
    
    <main>
        <div class="container2">
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
            <div class="delete-form">
                <form action="deleteMember.do" method="post">
                    <input type="hidden" name="id" value="${sessionScope.userId}">
                    <button type="submit">Delete</button>
                </form>
            </div>
        </div>
    </main>
</body>
</html>

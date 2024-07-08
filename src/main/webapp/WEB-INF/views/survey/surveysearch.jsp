<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey Detail</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <h1>설문 내역</h1>
    <form>
        <label>회원 ID</label>
        <input type="text" id="memberId" value="${survey.member_id}" readonly>
        <label>나라</label>
        <input type="text" id="country" value="${survey.country}" readonly>
        <label>지역</label>
        <input type="text" id="area" value="${survey.area}" readonly>
        <label>시작 날짜</label>
        <input type="text" id="startDate" value="${survey.start_date}" readonly>
        <label>종료 날짜</label>
        <input type="text" id="endDate" value="${survey.end_date}" readonly>
        <label>체류 유형</label>
        <input type="text" id="stayType" value="${survey.stay_type}" readonly>
        <label>인원 수</label>
        <input type="text" id="peopleCount" value="${survey.peoplecount}" readonly>
        <label>기후</label>
        <input type="text" id="climate" value="${survey.climate}" readonly>
        <label>관심사 1</label>
        <input type="text" id="activity1" value="${survey.activity_type1}" readonly>
        <label>관심사 2</label>
        <input type="text" id="activity2" value="${survey.activity_type2}" readonly>
        <label>관심사 3</label>
        <input type="text" id="activity3" value="${survey.activity_type3}" readonly>
    </form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey List</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
        }
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 600px;
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
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
    </style>
</head>
<body>
    <h1>Survey List</h1>
    <div id="surveyList">
        <c:forEach var="survey" items="${surveys}">
            <div class="surveyItem" data-survey-id="${survey.survey_no}">
                <h2 class="viewSurvey">${survey.country} - ${survey.area}</h2>
                <p>시작 날짜: ${survey.start_date}, 종료 날짜: ${survey.end_date}</p>
                <button class="viewSurvey">View</button>
                <button class="deleteSurvey">Delete</button>
            </div>
        </c:forEach>
    </div>

    <div id="surveyModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModal">&times;</span>
            <div id="surveyDetailContent"></div>
        </div>
    </div>

    <script>
        $(document).ready(function() {
            $('.viewSurvey').click(function() {
                var surveyId = $(this).closest('.surveyItem').data('survey-id');
                $.ajax({
                    url: 'surveysearch.do',
                    type: 'GET',
                    data: { survey_no: surveyId },
                    success: function(data) {
                        $('#surveyDetailContent').html(data);
                        $('#surveyModal').show();
                    },
                    error: function(xhr, status, error) {
                        alert('설문을 불러오는 데 실패했습니다.');
                    }
                });
            });

            $('#closeModal').click(function() {
                $('#surveyModal').hide();
                $('#surveyDetailContent').html('');
            });

            $(window).click(function(event) {
                if (event.target.id === 'surveyModal') {
                    $('#surveyModal').hide();
                    $('#surveyDetailContent').html('');
                }
            });

            $('.deleteSurvey').click(function() {
                var surveyId = $(this).closest('.surveyItem').data('survey-id');
                if (confirm('해당 설문을 삭제하시겠습니까?')) {
                    $.ajax({
                        url: 'deleteSurvey.do',
                        type: 'POST',
                        data: { survey_no: surveyId },
                        success: function(response) {
                            alert('설문이 삭제되었습니다.');
                            location.reload();
                        },
                        error: function(xhr, status, error) {
                            alert('설문 삭제에 실패했습니다.');
                        }
                    });
                }
            });
        });
    </script>
</body>
</html>

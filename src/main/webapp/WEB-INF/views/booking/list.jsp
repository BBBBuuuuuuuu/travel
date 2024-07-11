<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Booking List</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
        function cancelBooking(booking_no) {
            if (confirm("정말로 예약을 취소 하시겠습니까?")) {
                $.ajax({
                    type: "POST",
                    url: "cancel.do",
                    data: { bookingNo: booking_no },
                    success: function(response) {
                        alert("예약이 취소되었습니다.");
                        location.reload();
                    },
                    error: function() {
                        alert("에러가 발생했습니다.");
                    }
                });
            }
        }

        function showBookingDetails(booking_no) {
            $.ajax({
                type: "GET",
                url: "/booking/search",
                data: { booking_no: booking_no },
                success: function(data) {
                    $("#bookingDetailsModal .modal-body").html(data);
                    $("#bookingDetailsModal").modal("show");
                },
                error: function() {
                    alert("예약 상세 정보를 가져오는 데 실패했습니다.");
                }
            });
        }
    </script>
<style type="text/css">
.h1, h1 {
	font-size: 2.5rem;
	margin-top: 5%;
}

.btn-danger {
	color: #fff;
	background-color: #00aa6c;
	border-color: #000000;
}
</style>
</head>
<%@ include file="/resources/includes/header.jsp"%>

<body>

    <div class="container">
        <h1>내가 떠나기로 한 여행</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>예약 번호</th>
                    <th>상품 번호</th>
                    <th>출발일</th>
                    <th>도착일</th>
                    <th>가격/박</th>
                    <th>인원수</th>
                    <th>총합 가격</th>
                    <th>예약취소</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="booking" items="${bookings}">
                    <tr>
                        <td>
                            <button class="btn btn-link" onclick="showBookingDetails(${booking.booking_no})">
                                ${booking.booking_no}
                            </button>
                        </td>
                        <td>${booking.board_no}</td>
                        <td>${booking.start_date}</td>
                        <td>${booking.end_date}</td>
                        <td>${booking.price}</td>
                        <td>${booking.people_count}</td>
                        <td>${booking.total_price}</td>
                        <td>
                            <button class="btn btn-danger" onclick="cancelBooking(${booking.booking_no})">예약 취소</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div id="bookingDetailsModal" class="modal fade" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">예약 상세</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
       
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>

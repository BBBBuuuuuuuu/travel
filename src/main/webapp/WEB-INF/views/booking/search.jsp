<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@tag body-content="empty" description="This tag renders the content of the modal."%>
<%@attribute name="booking" required="true" %>

<div>
    <table>
        <tr>
            <th>Booking No</th>
            <td>${booking.booking_no}</td>
        </tr>
        <tr>
            <th>Board No</th>
            <td>${booking.board_no}</td>
        </tr>
        <tr>
            <th>Start Date</th>
            <td>${booking.start_date}</td>
        </tr>
        <tr>
            <th>End Date</th>
            <td>${booking.end_date}</td>
        </tr>
        <tr>
            <th>Price</th>
            <td>${booking.price}</td>
        </tr>
        <tr>
            <th>Total Price</th>
            <td>${booking.total_price}</td>
        </tr>
    </table>
</div>

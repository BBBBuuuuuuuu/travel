<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<footer>
    <div class="footer-content">
        <p>&copy; 2024 My Web Application. All rights reserved.</p>
        <nav class="footer-nav">
            <ul>
                <li><a href="/about.jsp">About Us</a></li>
                <li><a href="/contact.jsp">Contact</a></li>
                <li><a href="/privacy.jsp">Privacy Policy</a></li>
                <li><a href="/terms.jsp">Terms of Service</a></li>
            </ul>
        </nav>
    </div>
    <style>
        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            margin: 0;
        }
        .content {
            flex: 1;
        }
        footer {
        	margin-top: 5%;
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .footer-content {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .footer-nav ul {
            list-style: none;
            padding: 0;
        }
        .footer-nav ul li {
            display: inline;
            margin: 0 10px;
        }
        .footer-nav ul li a {
            color: white;
            text-decoration: none;
        }
        .footer-nav ul li a:hover {
            text-decoration: underline;
        }
    </style>
</footer>

</body>
</html>
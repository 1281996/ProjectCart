<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action='/LoginServlet/LServlet' method='post'>
		<label><b>UserName:</b></label> <input type="text" name="userid"
			required><br> <label><b>Password</b></label> <input
			type="password" name="pwd" required><br> <input
			type="submit" value="Login!"><br> <a href="ForgotPassword.jsp">Forgot
			Password</a><br> <br>
	</form>
</body>
</html>
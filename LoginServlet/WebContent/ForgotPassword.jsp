<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Please fill the details</h4>
	<form action='FServlet' method = 'post'>
	 <label><b>User Name:</b></label>
	<input type="text" name="userid" required>
	<br>
	 <label><b>Password:</b></label> 
	<input type="password" name="pwd" required>
	<br>
	 <label><b>Re-Enter:</b></label>
	<input type="password" name="pwd1" required>
	<br> 
	<input type="submit" value="submit" />
	</form>
</body>
</html>
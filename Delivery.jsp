<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
<image src="Desert.jpg" alt="Product1"   height=100 width=100>
	<h1 align=center>Welcome to ShoppingCart</h1>
	<center>
		<nav>
		<pre>
			<a href="#">Home</a>			<a href="#">About</a>			<a href="#">Login</a>			<a
				href="#">Register</a>                <a href="#">Cart</a>
		</pre></nav>
	</center>
	<hr>


<center>
<form>
Name:<input type="text" name="Name" required><br>
Contact No:<input type="number" name="MobNo" required><br>
Email Id:<input type="email" name="emailId" required><br>
Address:<input type="text" name="Address" required><br>
<input type="reset" value="reset">
<input type="button" onclick="alert(' Your order successfully placed')" value="Submit">

</form>
</center>

<footer>
<hr>
<center><h2>Thank you for shopping</h2></center>
</footer>

</body>
</html>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>NETMART</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">
<h3>Select Your New Security Question</h3>
  <select class="input-style" name="securityQuestion">
  <option value="What is your favourite movie?">What is your favourite movie?</option>
  <option value="What was the first computer game you played?">>What was the first computer game you played?</option>
  <option value="What is the name of your elementary school?">What is the name of your elementary school?</option>
  <option value="What is the name of your born city?">What is the name of your born city?</option>
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer" placeholder="Enter Your New Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password (For Security)" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>
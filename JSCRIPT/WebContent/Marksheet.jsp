<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MARKSHEET</title>
</head>
<body background="C:\Users\TARUN\Desktop\TARUN\Pictures\manchester_united_football_club-1920x1080.jpg">
<fieldset class="account-info">
<center><h1><font color="YELLOW">MARKSHEET MANAGMENT SYSTEM</font></h1></center>
</fieldset>
<center>
<form action="" name="mark" >
<fieldset class="account-info">
<label>
<div id="errorbox"></div>
</label>
</fieldset>
<fieldset class="account-info">
<label>
<font color="SILVER">FIRST NAME</font>
<input type="text" name="firstname" placeholder="FIRST NAME">
<font color="SILVER">LAST NAME</font>
<input type="text" name="lastname" placeholder="LAST NAME">
<font color="SILVER">ROLL NO</font>
<input type="text" name="rollno" placeholder="ROLL NO">
<font color="SILVER">PHYSICS SCORE</font>
<input type="text" name="physics" palceholder="PHYSICS">
<font color="SILVER">CHEMISTRY SCORE</font>
<input type="text" name="chemistry" placeholder="CHEMISTRY">
<font color="SILVER">MATHS SCORE</font>
<input type="text" name="maths" placeholder="MATHS">
</label>
</fieldset>
<fieldset class="account-action">
<input class="btn1" type="submit" name="operation" value="ADD"> <input class="btn1" type="submit" name="operation" value="MODIFY"> 
<input class="btn1" type="submit" name="operation" value="DELETE">
</fieldset>
</form>
<br>
<span class="class A">
<a href="getroll.jsp">GET RECORD</a>
</span>
<span class="class A">
<a href="search.jsp">SEARCH</a>
</span>
<span class="class A">
<a href="Meritlist.jsp">MERIT LIST</a>
</span>
</center>
</body>
</html>
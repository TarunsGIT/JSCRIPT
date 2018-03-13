<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="register.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTER</title>
<script type="text/javascript">
function valid(reg){
	var email=document.reg.email.value;
	var password=document.reg.pwd.value;
	var em=/^[a-zA-Z]+[._a-zA-Z0-9]+@[a-zA-Z]+.[a-zA-Z]{2,4}$/;
	var pass=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{5,10}$/; 
	if(email=="" || email==null){
		document.reg.email.focus();
		document.getElementById("errorbox").innerHTML="Enter Email";
		return false;
		}else if(!em.test(email)){
			document.reg.email.focus();
			document.getElementById("errorbox").innerHTML="Enter Valid Email";
			return false;
			}else if(password=="" || password==null){
			document.reg.pwd.focus();
			document.getElementById("errorbox").innerHTML="Enter Password";
			return false;
			}else if(password.length<5){
				document.reg.pwd.focus();
				document.getElementById("errorbox").innerHTML="Short Password";
				return false;
				}else if(!pass.test(password)){
				document.reg.pwd.focus();
				document.getElementById("errorbox").innerHTML="Password Must Contain Atleast(One Upper,One Lower,One Numeric And One Special Character)";
				return false;
				}else if(email==password){
					document.reg.pwd.focus();
					document.getElementById("errorbox").innerHTML="Email Address AND Password Cant Be Same";
					return false;
					}
			else{
				reg.submit;
				}
}
</script>
</head>
<body background="C:\Users\TARUN\Desktop\TARUN\Pictures\autumn_new_zealand-1920x1200.jpg">
<fieldset class="account-info">
<center><h1><font color="YELLOW">MARKSHEET MANAGMENT SYSTEM</font></h1></center><br>
</fieldset>
<fieldset class="account-info">
<center><h3><font color="SILVER">SIGNUP DETAILS</font></h3></center>
</fieldset>
<center>
<form action="RegisterEmailCSK" method="post" name="reg" onsubmit="return valid(this)" >
<fieldset class="account-info">
<label>
<div id="errorbox"></div>
</label>
</fieldset>
<fieldset class="account-info">
<label>
<font color="SILVER">EMAIL ADDRESS</font>
<input type="text" name="email" placeholder="name@domain.com">
</label>
<label>
<font color="SILVER">PASSWORD</font>
<input type="password" name="pwd" placeholder="password">
</label>
</fieldset>
<fieldset class="account-action">
<input class="btn" type="submit" name="submit" value="REGISTER" onclick="valid(this.reg)">
</fieldset>
</form>
<br>
 <span class="class A">
 <a href="login.jsp">--EXISTING USER--</a><br>
 </span>
 <br><h5><font color="330000">&#9400;  2016 DEVELOPED BY MANHATTAN LIMITED</font></h5>
</center>
</body>
</html>
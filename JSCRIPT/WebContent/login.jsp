<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="login.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN CSS</title>
<script type="text/javascript">
function valid(cfm){
	var email=document.cfm.email.value;
	var password=document.cfm.pwd.value;
	if(email=="" || email==null){
		document.cfm.email.focus();
		document.getElementById("errorbox").innerHTML="Enter Email";
		return false;
	
		}else if(password=="" || password==null){
             document.cfm.pwd.focus();
             document.getElementById("errorbox").innerHTML="Enter Password";
             return false;
             }else if(password.length<5){
                 document.cfm.pwd.focus();
                 document.getElementById("errorbox").innerHTML="Atleast Five Character";
                 return false;
                 }
		else{
			cfm.submit;
			}
		}
</script>
</head>
<body background="C:\Users\TARUN\Desktop\TARUN\Pictures\autumn_new_zealand-1920x1200.jpg">
<fieldset class="account-info">
<center><h2><font color="YELLOW">SIGNUP DETAILS</font></h2></center><br>
</fieldset>
<center>
<form action="" name="cfm" onsubmit="return valid(this)">
<fieldset class="account-info">
<label>
<div id="errorbox" ></div>
</label>
</fieldset>
<fieldset class="account-info">
<label>
<font color="SILVER">EMAIL ADDRESS</font>
<input type="text" name="email" placeholder="name@domain.com">
</label>
<label>
<font color="SILVER">PASSWORD</font>
<input type="password" name="pwd" >
</label>
</fieldset>
<fieldset class="account-action">
<input class="btn" type="submit" name="submit" value="LOGIN" onclick="valid(this.cfm)">
<label>
<input  type="checkbox" name="remember"><font color="YELLOW">Stay signed in</font>
</label>
</fieldset>

</form>
</center>
</body>
</html>
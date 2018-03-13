<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Marksheet.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MARKSHEET</title>
<script type="text/javascript">
	function valid(mark) {
		var fname = document.mark.firstname.value;
		var lname = document.mark.lastname.value;
		var roll = document.mark.rollno.value;
		var phy = document.mark.physics.value;
		var chs = document.mark.chemistry.value;
		var maths = document.mark.maths.value;
		var score = /^[0-9]+$/;
		var name = /^[a-zA-Z]+$/;
		if (document.pressed == 'ADD') {

			if (fname == "" || fname == null) {
				document.mark.firstname.focus();
				document.getElementById("errorbox").innerHTML = "FIRST NAME";
				return false;
			} else if (!name.test(fname)) {
				document.mark.firstname.focus();
				document.getElementById("errorbox").innerHTML = "ONLY ALPHABETS";
				return false;
			} else if (lname == "" || lname == null) {
				document.mark.lastname.focus();
				document.getElementById("errorbox").innerHTML = "LAST NAME";
				return false;
			} else if (roll == "" || roll == null) {
				document.mark.rollno.focus();
				document.getElementById("errorbox").innerHTML = "ROLL NO";
				return false;
			} else if (phy == "" || phy == null) {
				document.mark.physics.focus();
				document.getElementById("errorbox").innerHTML = "PHYSICS";
				return false;
			} else if (!score.test(phy)) {
				document.mark.physics.focus();
				document.getElementById("errorbox").innerHTML = "ONLY NUM";
				return false;
			} else if (phy > 100) {
				document.mark.physics.focus();
				document.getElementById("errorbox").innerHTML = "MARKS ARE OUT OF 100";
				return false;
			} else if (chs == "" || chs == null) {
				document.mark.chemistry.focus();
				document.getElementById("errorbox").innerHTML = "CHEMISTRY";
				return false;
			} else if (maths == "" || maths == null) {
				document.mark.maths.focus();
				document.getElementById("errorbox").innerHTML = "MATHS";
				return false;
			} else {
				mark.submit;
			}
		} else if (document.pressed == 'DELETE') {
			document.mark.action = "login.jsp";
			/* var roll=document.mark.rollno.value;
			if(roll=="" || roll==null){
			 document.mark.rollno.focus();
			 document.getElementById("errorbox").innerHTML="ENTER VALID ROLL NO TO DELETE RECORD";
			 return false;
			 }
			else {
			 mark.submit;
			 } */
		}

		else if (document.pressed == 'MODIFY') {
			var fname = document.mark.firstname.value;
			var lname = document.mark.lastname.value;
			var roll = document.mark.rollno.value;
			var phy = document.mark.physics.value;
			var chs = document.mark.chemistry.value;
			var maths = document.mark.maths.value;

			if (fname == "" || fname == null) {
				document.mark.firstname.focus();
				document.getElementById("errorbox").innerHTML = "FIRST NAME";
				return false;
			} else if (lname == "" || lname == null) {
				document.mark.lastname.focus();
				document.getElementById("errorbox").innerHTML = "LAST NAME";
				return false;
			} else if (roll == "" || roll == null) {
				document.mark.rollno.focus();
				document.getElementById("errorbox").innerHTML = "ROLL NO";
				return false;
			} else if (phy == "" || phy == null) {
				document.mark.physics.focus();
				document.getElementById("errorbox").innerHTML = "PHYSICS";
				return false;
			} else if (chs == "" || chs == null) {
				document.mark.chemistry.focus();
				document.getElementById("errorbox").innerHTML = "CHEMISTRY";
				return false;
			} else if (maths == "" || maths == null) {
				document.mark.maths.focus();
				document.getElementById("errorbox").innerHTML = "MATHS";
				return false;
			}

			else {
				mark.submit;
			}
		}
	}
</script>
</head>
<body
	background="C:\Users\TARUN\Desktop\TARUN\Pictures\manchester_united_football_club-1920x1080.jpg">
	<fieldset class="account-info">
		<center>
			<h1>
				<font color="YELLOW">MARKSHEET MANAGMENT SYSTEM</font>
			</h1>
		</center>
	</fieldset>
	<fieldset class="account-info">

		<center>
			<h3>
				<font color="SILVER">STUDENT DETAILS</font>
			</h3>
		</center>
	</fieldset>
	<center>
		<form action="SuccessCTL" method="post" name="mark"
			onsubmit="return valid(this)">
			<fieldset class="account-info">
				<label>
					<div id="errorbox"></div>
				</label>
			</fieldset>
			<fieldset class="account-info">
				<label> <font color="SILVER">FIRST NAME</font> <input
					type="text" name="firstname" placeholder="FIRST NAME"> <font
					color="SILVER">LAST NAME</font> <input type="text" name="lastname"
					placeholder="LAST NAME"> <font color="SILVER">ROLL
						NO</font> <input type="text" name="rollno" placeholder="ROLL NO">
					<font color="SILVER">PHYSCIS SCORE</font> <input type="text"
					name="physics" placeholder="PHYSCIS"> <font color="SILVER">CHEMISTRY
						SCORE</font> <input type="text" name="chemistry" placeholder="CHEMISTRY">
					<font color="SILVER">MATHS SCORE</font> <input type="text"
					name="maths" placeholder="MATHS">
				</label>
			</fieldset>
			<fieldset class="account-action">
				<input class="btn1" type="submit" name="operation"
					onclick="document.pressed=this.value" value="ADD"> <input
					class="btn1" type="submit" name="operation"
					onclick="document.pressed=this.value" value="MODIFY"> <input
					class="btn1" type="submit" name="operation"
					onclick="document.pressed=this.value" value="DELETE">
			</fieldset>
		</form>
		<br> <span class="class A"> <a href="getroll.jsp"><font
				color="RED">GET RECORD</font></a> <a href="search.jsp"><font
				color="RED">SEARCH</font></a> <a href="Meritlist.jsp"><font
				color="RED">GET MERIT LIST</font></a>
		</span>
	</center>
</body>
</html>
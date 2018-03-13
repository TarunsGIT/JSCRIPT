<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INNER HTML</title>
<script type="text/javascript">
var namepattern=/^[a-zA-Z]+$/;
var emailpattern=/^[a-zA-Z][a-zA-Z0-9_]@[a-zA-Z0-9-]+)*\.([a-zA-Z]{2-4})+$/;
function vaildate(innner){
	var x="";
	flag=true;
if(document.inner.fn.value=="" || document.inner.fn.value==null){
	x+="PELASE ENTER FIRST NAME";
	document.getElementById('pfn').innerHTML=x;
	flag=false;
}
else if(!namepattern.test(document.inner.fn.value)){
	x+="ONLY ALPHABETS";
	document.getElementById('pfn').innerHTML=x;
	x.value="";
	flag=false;
	}
else if(document.inner.ln.value=="" || document.inner.ln.value==null){
	x+="PELASE ENTER LAST NAME";
	document.getElementById('pln').innerHTML=x;
 	flag=false;
    }
else if(!namepattern.test(document.inner.ln.value)){
	    x+="ONLY ALPHABETS";
    	document.getElementById('pln').innerHTML=x;
    	flag=false;
        }
else if(document.inner.em.value=="" || document.inner.em.value==null){
	x+="PLEASE ENTER EMAIL";
  	document.getElementById('pem').innerHTML=x;
    flag=false;
	  }
else if(!emailpattern.test(document.inner.em.value)){
	x+="PLEASE ENTER VALID EMAIL";
		  document.getElementById('pem').innerHTML=x;
		  flag=false;
		  }
else{
	confirm("DO YOU WANT TO SUBMIT");
	inner.submit;
}
return flag;
}
</script>
</head>
<body background="C:\Users\TARUN\Desktop\TARUN\Pictures\autumn_new_zealand-1920x1200.jpg">
<form action="" name="inner" method="post" onsubmit="return vaildate(this)">
<center><h1><font color="YELLOW">REGISTRATION</font></h1></center>
<center>
<table border='0'>
<tr>
<td><label for="firstname"><font color="YELLOW">FIRST NAME</font><sup style="color:RED">*</sup></label>
</td>
<td><input type="text" id="fn"></td><td width="200px"><i style="color:RED;" id="pfn"></i></td>
</tr>
<tr>
<td><label for="lastname"><font color="YELLOW">LAST NAME</font><sup style="color: #F00">*</sup></label></td>
<td><input type="text" id="ln"></td><td width="200px"><i style="color:RED;" id="pln"></i></td>
</tr>
<tr>
<td><label for="email"><font color="YELLOW">EMAIL ADDRESS</font><sup style="color: #F00">*</sup></label></td>
<td><input type="text" id="em"></td><td width="200px"><i style="color: RED;" id="pem" ></i></td>
</tr>
<tr>
<td></td><td><br><br/><input type="submit" value="SUBMIT" onclick="vaildate(this.inner)"></td>
</tr>
<tr>
<td></td><td style="font-size: 40px; text-align: right;"><br/><i style="color: YELLOW; font-size: 12px; align:right;">* - MANDATORY</i></td>
</tr>
</table>
</center>
</form>
</body>
</html>
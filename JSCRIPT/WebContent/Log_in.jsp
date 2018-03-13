<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LOGIN SCRIPT</title>
<script type="text/javascript">
function vaildate(log){
	var x="";
      flag=true;
      if(document.log.eml.value=="" || document.log.eml.value==null){
          x+="ENTER EMAIL ADDRESS.";
          document.getElementById('peml').innerHTML=x;
          return false;
          }
      else if(document.log.pwd.value=="" || document.log.pwd.value==null){
    	  x+="ENTER PASSWORD.";
    	  document.getElementById('ppwd').innerHTML=x;
    	  return false;
          }
      else {
          confirm("ARE YOU SURE");
          log.submit;
          }
      return flag;
}
	/* if(log.eml.value=="" || log.eml.value== null){
		document.getElementById('eml').innerHTML="PLEASE ENTER EMAIL";
		//alert("PLEASE FIIL OUT THE REQUIRED");
		flag=false;
		}else if(log.pwd.value=="" || log.pwd.value==null){
           alert("PLEASE FILL OUT THE PASSWORD");
           flag=false;
			}
		else{
			confirm("ARE YOU SURE");
			log.submit;
			}
	return flag; */

</script>
</head>
<body background="C:\Users\TARUN\Desktop\TARUN\Pictures\autumn_new_zealand-1920x1200.jpg">
<center><h1><font color="YELLOW">SESSION MANAGMENT</font></h1></center><br>
<center><h4><font color="SILVER">LOGIN DETAILS</font></h4></center>
<form action="Log_inCTL" method="post" name="log" onsubmit="return vaildate(this)">
<center>
<table>
<tr>
<td><font color="SILVER">EMAIL ADDRESS</font></td>
<td>
<input type="text" name="email" id="eml" ></td>
<td width="200px"><b style="color:YELLOW" id="peml"></b></td>
</tr>
<tr>
<td><font color="SILVER">PASSWORD</font></td>
<td>
<input type="password" name="password" id="pwd" ></td>
<td width="200px"><b style="color:YELLOW" id="ppwd"></b></td>
</tr>
<tr>
<td></td><td><br><br/><input type="submit" value="LOGIN" onclick="vaildate(this.log)"></td>
</tr>
</table>

</center>
</form>
</body>
</html>
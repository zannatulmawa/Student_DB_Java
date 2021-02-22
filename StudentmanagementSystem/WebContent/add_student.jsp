<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

.container{
background-color: #75cfb8;

}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">
function doValidate(){
	
	
	var rollNumber = document.forms["student_form"]["roll_number"].value;
	var name = document.forms["student_form"]["name"].value;
	var course = document.forms["student_form"]["course"].value;
	var rollNumberStatus;
	var nameStatue;
	var courseStatus;
	var rollNumberMsg;
	var nameMsg;
	var courseMsg;
	
	if(rollNumber != "" && name != "" && course != ""){
		return true;
	}else{
		
		if(document.getElementById("rollNumberMsg").innerHTML != ""){    //resetting error messages
			document.getElementById("rollNumberMsg").innerHTML = "";
		}
		
		if(document.getElementById("nameMsg").innerHTML != ""){
			document.getElementById("nameMsg").innerHTML = "";		
		}
		
		if(document.getElementById("courseMsg").innerHTML != ""){
			document.getElementById("courseMsg").innerHTML = "";		
		}
		
		
		if(rollNumber == ""){
			rollNumberStatus = false; //This is my program
			rollNumberMsg = "* Roll number is missing"
			var spanEle = document.getElementById("rollNumberMsg")
			spanEle.style.color = "red";
			spanEle.innerHTML = rollNumberMsg;
			//document.getElementById("rollNumberMsg").innerHTML = rollNumberMsg;
		}
		
		if(name == ""){
			nameStatus = false;
			nameMsg = "* name is missing"
			var spanEle = document.getElementById("nameMsg")
			spanEle.style.color = "red";
			spanEle.innerHTML = nameMsg;	
			//document.getElementById("nameMsg").innerHTML = nameMsg;
		}
		
		if(course == ""){
			courseStatus = false;
			courseMsg = "* course is missing"
			var spanEle = document.getElementById("courseMsg")
			spanEle.style.color = "red";
			spanEle.innerHTML = courseMsg;
			//document.getElementById("courseMsg").innerHTML = courseMsg;
		}
	}
	
	return false;
}


</script>


<div><%@include file="header.html" %></div>


<div class="container">

<center>
<h1>Add Student</h1>


<form action="./AddStudentController"  name= "student_form" method="post" onsubmit="return doValidate()">
<table>
<tr><td>Student ID</td><td><input type ="text" name="roll_number"> <span id = "rollNumberMsg"></span></td></tr>
<tr><td>Student Name</td><td><input type ="text" name="name"><span id = "nameMsg"></span></td></tr>
<tr><td>Gender</td><td><input type= "radio" name = "gender" checked= "checked" value="male" >Male &nbsp;&nbsp;&nbsp;<input type="radio" name = "gender" value="female">Female</td></tr>
<tr><td>Course</td><td><select name = "course">
<option value="" >--select--</option>
<option value="java" >Java</option>
<option value="html" >HTML</option>
<option value="dot net" >Dot Net</option>
</select> <span id = "courseMsg"></span></td></tr>
<tr><td><input type = "submit" value = "Add Student"></td><input type = "button" value="Cancel"><td></tr>
</table>

</form>
</center>


</div>


<div><%@include file="footer.html" %></div>

</body>
</html>
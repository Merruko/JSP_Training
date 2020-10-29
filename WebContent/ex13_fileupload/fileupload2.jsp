<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload 예제</title>
</head>
<body>
	
	<form action="fileupload2-process.jsp" method="post"
		  enctype="multipart/form-data">
		<p>이 름 : <input type="text" name="name1">
		   제 목 : <input type="text" name="subject1">
		   파일 이름 : <input type="file" name="filename1"></p>
		<p>이 름 : <input type="text" name="name2">
		   제 목 : <input type="text" name="subject2">
		   파일 이름 : <input type="file" name="filename2"></p>
		<p>이 름 : <input type="text" name="name3">
		   제 목 : <input type="text" name="subject3">
		   파일 이름 : <input type="file" name="filename3"></p>
		
		<p><input type="submit" value="파일 올리기">
	
	</form>

</body>
</html>
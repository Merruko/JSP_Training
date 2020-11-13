<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onsubmit 예제</title>
<script type="text/javascript">
	function checkForm(){
		var form = document.loginForm
		
		if(document.loginForm.passwd.value == ""){
			alert("비밀번호를 입력해주세요~");
			form.passwd.focus();
			return false;
		}
	}
</script>
</head>
<body>
	<form name="loginForm" action="add-process.jsp" method="post" 
		  onsubmit="return checkForm()">
		<p>아이디 : <input type="text" name="userId">
		<p>비밀번호 : <input type="password" name="passwd">
		<p><input type="submit" value="로그인">
	</form>
	
</body>
</html>
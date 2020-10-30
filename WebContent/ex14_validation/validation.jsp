<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>

<script type="text/javascript">

	function checkLogin() {
		var form = document.loginForm;
		if(form.id.value==""){	// id를 입력하지 않았다면
			alert("아이디를 입력해주세요");
			form.id.focus();	// 커서의 위치
			return false;
		} else if(form.pw.value==""){ // pwd를 입력하지 않았다면
			alert("비밀번호를 입력해주세요.");
			form.pw.focus();
			return false;
		} 
		else {
			form.submit();	// action 경로로 전송
		}
	}
	
</script>

</head>
<body>

	<form name="loginForm" action="validation-process.jsp" method="post">
      <p>아이디 : <input type="text" name="id">
      <p>비밀번호 : <input type="password" name="pw">
      <p><input type="button" value="로그인" onclick="checkLogin()">
   </form>

</body>
</html>
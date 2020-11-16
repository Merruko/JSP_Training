<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>

<style type="text/css">
	body{background: black; color: white;}
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"], [type="password"] {width: 200px; height: 20px;}
</style>

<script src="../RESOURCES/java_script/validation-mem.js"></script>

</head>
<body>
	<div id="container">
		<h2>회원 등록</h2>
		<hr>
			<form name="regForm" action="add-process.jsp" method="post">
				<table>
					<tr>
						<td>아이디</td>
						<td><input type="text" name="memberId" placeholder="영문/숫자 4자~10자 입력"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" name="passwd" placeholder="아무거나 5자~12자 입력"></td>
					</tr>
					<tr>
						<td>비밀번호 확인</td>
						<td><input type="password" name="passwd_cf"></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>성별</td>
						<td><input type="radio" name="gender" value="남" checked>남 
							<input type="radio" name="gender" value="여">여
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" value="등록" onclick="checkForm()">
						<input type="reset" value="리셋">
						<input type="button" value="취소" onclick="history.back(-1);">
					</tr>
				</table>			
			</form>
	</div>
</body>
</html>
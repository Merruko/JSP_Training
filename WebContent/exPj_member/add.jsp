<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>

<style type="text/css">
	body{background: black; color: white;}
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"], [type="password"] {width: 200px; height: 20px;}
</style>

<script src="../RESOURCES/java_script/validation-mem-add.js"></script>

</head>
<body>
	<div id="container">
		<h2>会員登録</h2>
		<hr>
			<form name="regForm" action="add-process.jsp" method="post">
				<table>
					<tr>
						<td>ID</td>
						<td><input type="text" name="memberId" placeholder="英文・数字 4~10文字 入力"></td>
					</tr>
					<tr>
						<td>パスワード</td>
						<td><input type="password" name="passwd" placeholder="何でも 5~12文字 入力"></td>
					</tr>
					<tr>
						<td>パスワード確認</td>
						<td><input type="password" name="passwd_cf"></td>
					</tr>
					<tr>
						<td>氏名</td>
						<td><input type="text" name="name"></td>
					</tr>
					<tr>
						<td>性別</td>
						<td><input type="radio" name="gender" value="男" checked>男
							<input type="radio" name="gender" value="女">女
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="button" value="登録" onclick="checkAddForm()">
						<input type="reset" value="書き直し">
						<input type="button" value="取り消し" onclick="history.back(-1);">
					</tr>
				</table>			
			</form>
	</div>
</body>
</html>
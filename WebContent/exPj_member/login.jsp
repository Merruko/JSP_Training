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
	input[type="text"], [type="password"]{width: 200px; height: 20px;}
</style>
</head>
<body>
	<div id="container">
		<h2>ログイン</h2>
		<hr>
			<form action="login-process.jsp" method="post">
				<table>
					<tr>
						<td>ID</td>
						<td><input type="text" name="memberId"></td>
					</tr>
					<tr>
						<td>パスワード</td>
						<td><input type="password" name="passwd"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="ログイン">
						<input type="reset" value="書き直し">
						<input type="button" value="取り消し" onclick="history.back(-1);">
					</tr>
				</table>			
			</form>
	</div>
</body>
</html>
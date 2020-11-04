<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록 폼</title>

<style type="text/css">
	#container{
         width:100%; 
         margin:0 auto;
         border:1px solid #222;
         text-align: center;
    }
    table{width:400px; 
      border:1px solid #222; 
      border-collapse: collapse; 
      margin:0 auto;
    }
    td{width:200px ; 
      border:1px solid #222;
      padding:10px; 
    }
</style>

</head>
<body>
	<div id="container">
		<h2>회원 가입</h2>
		<hr>
		<form action="member2-el.jsp" method="post">
			<table>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="id"></td>				
				</tr>
				<tr>
					<td>패스워드</td>
					<td><input type="password" name="pwd"></td>				
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name"></td>				
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="가입">
						<input type="reset" value="취소">
					</td>
				</tr>		
			</table>
		</form>
	</div>

</body>
</html>
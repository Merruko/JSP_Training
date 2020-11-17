<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Member" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

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

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	String memId = request.getParameter("memberId");
	Member member = memDAO.getDB(memId);
%>

<script src="../RESOURCES/java_script/validation-mem-upd.js"></script>

<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<h2><center>会員情報修正</center></h2>
		<hr>
		<form name="updateForm" action="update-process.jsp?memberId=<%=member.getMemberId() %>" 
			  method="post">
			<table>
				<tr>
					<td>ID</td>
					<td><input type="text" name="memberId" value="<%=member.getMemberId()%>" style="background-color:grey" readonly></td>
				</tr>
				<tr>
					<td>パスワード</td>
					<td><input type="text" name="passwd" placeholder="何でも 5~12文字 入力" style="background-color:white" value="<%=member.getPasswd()%>"></td>
				</tr>
				<tr>
					<td>パスワード確認</td>
					<td><input type="text" name="passwd_cf" style="background-color:white" value="<%=member.getPasswd()%>"></td>
				</tr>
				<tr>
					<td>氏名</td>
					<td><input type="text" name="name" style="background-color:white" value="<%=member.getName()%>"></td>
				</tr>
				<tr>
					<td>性別</td>
					<td>
						<% if(member.getGender().equals("男")){ %>
						<input type="radio" name="gender" value="男" checked>男
						<input type="radio" name="gender" value="女">女
						<% }else{ %>
						<input type="radio" name="gender" value="男">男
						<input type="radio" name="gender" value="女" checked>女
						<% } %>
					</td>
				</tr>
				<tr>
					<td>加入日</td>
					<td><input type="date" name="joinDate" value="<%=member.getJoinDate()%>" style="background-color:grey" readonly></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="button" value="登録" onclick="checkUpdForm()">
						<input type="reset" value="書き直し">
						<input type="button" value="取り消し" onclick="history.back(-1);">
					</td>
				</tr>
			</table>	
		</form>			
	</div>
</body>
</html>
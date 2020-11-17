<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Member" %>

<%-- <%@ page errorPage="exceptionNoPage.jsp" %> 500에러만 대처돼서 그냥 주석 처리함 --%>

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
<body>
	<jsp:include page="menu.jsp" />
	<%
		String sessionId = null;
		if(session.getAttribute("sessionId") != null){
			sessionId = (String)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<div id="container">
		<h2><center>会員情報</center></h2>
		<hr>
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" name="memberId" style="background-color:grey" value="<%=member.getMemberId()%>" readonly></td>
			</tr>
			<tr>
				<td>パスワード</td>
				<td><input type="password" name="passwd" style="background-color:white" value="<%=member.getPasswd()%>" readonly></td>
			</tr>
			<tr>
				<td>パスワード確認</td>
				<td><input type="password" name="passwd_cf" style="background-color:white" value="<%=member.getPasswd() %>" readonly></td>
			</tr>
			<tr>
				<td>氏名</td>
				<td><input type="text" name="name" style="background-color:white" value="<%=member.getName()%>" readonly></td>
			</tr>
			<tr>
				<td>性別</td>
				<td>
					<% if(member.getGender().equals("男")){ %>
					<input type="radio" name="gender" value="男" onclick="return(false);" checked>男
					<input type="radio" name="gender" value="女" onclick="return(false);">女
					<% }else{ %>
					<input type="radio" name="gender" value="男" onclick="return(false);">男
					<input type="radio" name="gender" value="女" onclick="return(false);" checked>女
					<% } %>
				</td>
			</tr>
			<tr>
				<td>加入日</td>
				<td><input type="date" name="joinDate" style="background-color:grey" value="<%=member.getJoinDate()%>" readonly></td>
			</tr>
			<tr>
				<td colspan="2">
				<%
					String dbId = member.getMemberId();
					if(sessionId.equals(dbId)){
				%>
				    <input type="button" value="修正" onClick="location.href='update.jsp?memberId=<%=member.getMemberId() %>'">
				    <input type="button" value="脱退" onClick="if(confirm('本当に脱退しますか？')){location.href='delete.jsp?memberId=<%=member.getMemberId() %>';}">
				<% } %>
				    <input type="button" value="リストへ" onClick="location.href='list.jsp'">
				</td>
			</tr>
		</table>			
	</div>
</body>
</html>
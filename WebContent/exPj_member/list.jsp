<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Member" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>

<style type="text/css">
	body{background: black; color: white;}
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 500px; border-collapse: collapse; text-align: center;}
	tr,td{border: 1px solid #222; padding: 10px;}
	.font{font-size: 1.1em;}
	.button{border: 1px solid #333; border-radius: 2px; padding: 2px 5px;
			background: #eee; text-decoration: none; color: black; font-size: 0.9em;}
	.button:hover{background: #ddd;}
</style>

</head>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<body>
	<jsp:include page="menu.jsp"></jsp:include>
	<%
		int sessionId = 0;
		if(session.getAttribute("sessionId") != null){
			sessionId = (Integer)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<div id="container">
		<h2>회원 목록</h2>
		<hr>
		<table>
			<tr>
				<td>회원번호</td><td>비밀번호</td><td>이름</td><td>성별</td><td>가입일</td><td>회원보기</td>
			</tr>
			<% for(Member member : memDAO.getListAll()) { %>
			<tr>
				<td><%=member.getMemberId() %></td>
				<td><%=member.getPasswd() %></td>
				<td><%=member.getName() %></td>
				<td><%=member.getGender() %></td>
				<td><%=member.getJoinDate() %></td>
				<td><a href="view.jsp?memberId=<%=member.getMemberId()%>" class="button">보기</a></td>
			</tr>
			<% } %>
		</table>			
	</div>
</body>
</html>
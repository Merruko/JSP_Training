<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.Member" %>

<%-- <%@ page errorPage="exceptionNoPage.jsp" %> 500에러만 대처돼서 그냥 주석 처리함 --%>

<% request.setCharacterEncoding("UTF-8"); %>

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
	input[type="text"], [type="password"]{width: 200px; height: 20px;}
</style>
</head>
<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>
<%
	int memId = Integer.parseInt(request.getParameter("memberId"));
	Member member = memDAO.getDB(memId);
%>
<body>
	<jsp:include page="menu.jsp" />
	<%
		int sessionId = 0;
		if(session.getAttribute("sessionId") != null){
			sessionId = (Integer)session.getAttribute("sessionId");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
	<div id="container">
		<h2><center>회원 정보</center></h2>
		<hr>
		<table>
			<tr>
				<td>회원번호</td>
				<td><input type="text" name="memberId" style="background-color:grey" value="<%=member.getMemberId()%>" readonly></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd" style="background-color:white" value="<%=member.getPasswd()%>" readonly></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="passwd_cf" style="background-color:white" value="<%=member.getPasswd() %>" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" style="background-color:white" value="<%=member.getName()%>" readonly></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<% if(member.getGender().equals("남")){ %>
					<input type="radio" name="gender" value="남" onclick="return(false);" checked>남
					<input type="radio" name="gender" value="여" onclick="return(false);">여
					<% }else{ %>
					<input type="radio" name="gender" value="남" onclick="return(false);">남
					<input type="radio" name="gender" value="여" onclick="return(false);" checked>여
					<% } %>
				</td>
			</tr>
			<tr>
				<td>가입일</td>
				<td><input type="date" name="joinDate" style="background-color:grey" value="<%=member.getJoinDate()%>" readonly></td>
			</tr>
			<tr>
				<td colspan="2">
				    <input type="button" value="목록" onClick="location.href='list.jsp'">
				<%
					int dbId = member.getMemberId();
					if(dbId == sessionId){	// id가 정수형이므로 비교(==) 사용
				%>
				    <input type="button" value="수정" onClick="location.href='update.jsp?memberId=<%=member.getMemberId() %>'">
				    <input type="button" value="탈퇴" onClick="if(confirm('정말로 탈퇴하시겠습니까?')){location.href='delete.jsp?memberId=<%=member.getMemberId() %>';}">
				<% } %>
				</td>
			</tr>
		</table>			
	</div>
</body>
</html>
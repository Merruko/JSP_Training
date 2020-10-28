<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="dao.AddrBook" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<jsp:useBean id="adDAO" class="dao.AddrBookDAO" scope="application"/>
<jsp:setProperty property="*" name="adDAO"/>

<body>
	<div id="container">
		<h2>주소 목록</h2>
		<hr>
		<table>
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
			</tr>
			<%
				for(AddrBook addrbook : adDAO.getListAll()){
			%>
			<tr>
				<td><%=addrbook.getUsername() %></td>
				<td><%=addrbook.getTel() %></td>
				<td><%=addrbook.getEmail() %></td>
				<td><%=addrbook.getSex() %></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
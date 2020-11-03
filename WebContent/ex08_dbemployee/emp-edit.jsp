<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="employee.Employee" %>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>사원 정보</title>

<style type="text/css">

#container{width: 600px; margin: 0 auto; text-align: center;}
h2{text-align: center;}
table{width: 400px; margin: 0 auto; border-collapse: collapse;}
tr, td{border: 1px solid #222; padding: 10px;}
.button{
	border: 1px solid #333; border-radius: 2px; font-size: 0.9em;
	text-decoration: none; background: #eee; padding: 2px 5px;
}
input[type="text"],input[type="password"],input[type="date"] {width: 150px; height: 20px;}

</style>

</head>

<jsp:useBean id="empDAO" class="employee.EmployeeDAO" scope="application"/>
<jsp:setProperty property="*" name="empDAO"/>
<%
	int comId = Integer.parseInt(request.getParameter("companyId"));	// 사번은 문자형이므로 변환
	Employee employee = empDAO.getOneDB(comId);
%>
<body>
	<div id="container">
		<h2>사원 정보</h2>
		<hr>
		<p><a href="emp-list.jsp">사원 목록으로</a>
		<table>
			<tr>
				<td>사번</td>
				<td><input type="text" name="companyId" value="<%=employee.getCompanyId() %>" style="background-color:white" readonly></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="passwd" value="<%=employee.getPasswd() %>" style="background-color:white" readonly></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=employee.getName() %>" style="background-color:white" readonly></td>
			</tr>
			<tr>
				<td>가입일</td>
				<td><input type="date" name="joinDate" value="<%=employee.getJoinDate() %>" style="background-color:white" readonly></td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="emp-update.jsp?companyId=<%=employee.getCompanyId() %>" class="button">수정</a>
					<a href="emp-delete.jsp?companyId=<%=employee.getCompanyId() %>" 
					onclick="return confirm('정말로 삭제하시겠습니까?')" class="button">삭제</a>
					
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<title>사원 등록 내용</title>

<style type="text/css">

#container{width: 600px; margin: 0 auto; text-align: center;}

</style>

</head>

<jsp:useBean id="employee" class="employee.Employee"/>
<jsp:setProperty property="companyId" name="employee"/>
<jsp:setProperty property="passwd" name="employee"/>
<jsp:setProperty property="name" name="employee"/>

<jsp:useBean id="empDAO" class="employee.EmployeeDAO" scope="application"/>
<jsp:setProperty property="*" name="empDAO"/>

<%
	empDAO.addEmployee(employee);
%>

<body>
	<div id="container">
		<h2>사원 등록 내용</h2>
		<hr>
			<p>사번 : <%=employee.getCompanyId() %>
			<p>비밀번호 : <%=employee.getPasswd() %>
			<p>이름 : <%=employee.getName() %>
			<br><br>
		<a href="emp-list.jsp">사원 목록 보기</a>
	</div>
</body>
</html>
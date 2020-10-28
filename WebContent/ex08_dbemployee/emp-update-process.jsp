<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="employee" class="employee.Employee"/>
<jsp:setProperty property="companyId" name="employee"/>
<jsp:setProperty property="passwd" name="employee"/>
<jsp:setProperty property="name" name="employee"/>

<jsp:useBean id="empDAO" class="employee.EmployeeDAO" scope="application"/>
<jsp:setProperty property="*" name="empDAO"/>

<%
	if(empDAO.update(employee)){	// 변경이 된 경우 사원 목록 조회 화면으로 이동
		response.sendRedirect("emp-list.jsp");
	}
%>

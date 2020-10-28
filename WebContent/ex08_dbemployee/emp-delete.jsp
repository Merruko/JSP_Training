<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="employee" class="employee.Employee"/>
<jsp:setProperty property="*" name="employee"/>

<jsp:useBean id="empDAO" class="employee.EmployeeDAO" scope="application"/>
<jsp:setProperty property="*" name="empDAO"/>

<%
	int comId = Integer.parseInt(request.getParameter("companyId"));
	if(empDAO.delete(comId)){
		response.sendRedirect("emp-list.jsp");
	}
%>

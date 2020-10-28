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
	int id = employee.getCompanyId();
	String pw = employee.getPasswd();
	
	if(empDAO.login(id, pw)){
		response.sendRedirect("emp-list.jsp");
	} else {
		out.println("<script>alert('사번이나 이름이 일치하지 않습니다.'); history.go(-1);</script>");
	}
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8"); //한글 인코딩 세팅    
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	#container{
		width: 600px;
		margin: 0 auto;
		text-align: center;
	}
	
	table, tr, td{
		width: 400px;
		margin: 0 auto;
		border: 1px solid #ccc;
		border-collapse: collapse;
	}
	
	td{padding: 5px;}
	input[type="text"]{width: 200px; padding: 5px;}
	input[type="submit"],input[type="reset"]{font-size:1.2em; width: 200px; padding: 5px;}
	
</style>

</head>
<jsp:useBean id="addrbook" class="dao.AddrBook"/>
<jsp:setProperty property="*" name="addrbook"/>
<jsp:useBean id="adDAO" class="dao.AddrBookDAO" scope="application"/>
<jsp:setProperty property="*" name="adDAO"/>

<%
	adDAO.addAddress(addrbook);
%>

<body>
	<div id="container">
		<h2>등록 내용</h2>
		<hr>
		<p>이름 : <%=addrbook.getUsername() %>
		<p>전화번호 : <%=addrbook.getTel() %>
		<p>이메일 : <%=addrbook.getEmail() %>
		<p>성별 : <%=addrbook.getSex() %>
		<hr>
		<a href="addrList.jsp">목록 보기</a>
	</div>

</body>
</html>
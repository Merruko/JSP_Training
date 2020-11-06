<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "dto.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리</title>
</head>

<%
	request.setCharacterEncoding("utf-8");
%>

	<jsp:useBean id="mi" class="dto.Member"></jsp:useBean>
	<jsp:setProperty property="*" name="mi"/>
	<jsp:useBean id="memberlist" class="java.util.ArrayList"></jsp:useBean>

<% 
	memberlist.add(mi);	// 회원가입시 들어가는 리스트
	Member m2 = new Member("son","0000","손흥민");	// 추가되는거
	memberlist.add(m2);
	Member m3 = new Member("park","0000","박용택"); // 추가되는거
	memberlist.add(m3);
%>

<c:set var="list" value="${memberlist}"/>

<body>
   <div id="container">
      <h2>회원 정보</h2>
      <hr>
      <table>
         <tr>
            <th>아이디</th>
            <th>패스워드</th>
            <th>이 름</th>
         </tr>
         <tr>
            <th>${list[0].id }</th>
            <th>${list[0].pwd }</th>
            <th>${list[0].name }</th>
         </tr>
         <tr>
            <th>${list[1].id }</th>
            <th>${list[1].pwd }</th>
            <th>${list[1].name }</th>
         </tr>
         <tr>
            <th>${list[2].id }</th>
            <th>${list[2].pwd }</th>
            <th>${list[2].name }</th>
         </tr>
      </table>
   </div>
      
</body>
</html>
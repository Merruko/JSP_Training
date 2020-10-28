<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="UTF-8">
	<title>page 디렉티브 태그</title>
</head>
<body>

	<%
		Date date = new Date();
		double pi = Math.PI;  //PI 속성은 정적 속성이므로 Math로 직접 접근
		double pow = Math.pow(5, 2);
		int abs = Math.abs(-10);
		long round = Math.round(2.54);
		double floor = Math.floor(7.89);
		double rand = Math.random();
		int dice = (int)(Math.floor(Math.random())) + 1;
	%>
	
	<p>현재 날짜 : <%= date %>
	<p>원주율은 : <%= pi %>
	<p>5의 제곱은 : <%= pow %>
	<p>-10의 절대값은 : <%= abs %>
	<p>반올림 : <%= round %>
	<p>내림 : <%= floor %>
	<p>무작위 수 : <%= rand %>
	
</body>
</html>
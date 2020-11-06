<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 목록</title>
<style type="text/css">
.list{width: 110%; margin: 0 auto; padding: 0 10px 10px;}
.list li{list-style: none; border-bottom: 2px solid #ccc; line-height: 100px;}
.list li img{float: left;}
.list li a{text-decoration: none; margin-left: 300px; color:black;}
.list li a:hober{text-decoration: underline;}
.list li span{margin-left: 300px; color:blue;}
</style>
</head>
<body>

	<ul class="list">
		<li>
			<span>이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="i" begin="1" end="9" step="1">
			<li>
				<a href="#">
					<img src="../RESOURCES/main_images/garlic.jpg" width="80" height="80">
				</a>
				<a href="#">이미지 이름 : 마늘${i}</a>
				<a href="#"><input type="checkbox" name="chk${i}"></a>
			</li>
		</c:forEach>
	</ul>

</body>
</html>
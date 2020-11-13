<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰</title>
<link rel="stylesheet" href="../RESOURCES/boot_strap/css/bootstrap.css">
</head>
<body>
   <jsp:include page="menu.jsp"></jsp:include>
   
      <div class="jumbotron">
         <div class="container">
            <h2 class="alert alert-danger">해당 상품이 존재하지 않습니다. (Code : 500)</h2>
         </div>
      </div>
         <div class="container">
            <p><%= request.getRequestURL() %>?<%=request.getQueryString()%>
            <p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
         </div>
      
</body>
</html>
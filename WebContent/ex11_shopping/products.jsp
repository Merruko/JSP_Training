<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, shopping.Product" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
<link rel="stylesheet" href="../RESOURCES/boot_strap/css/bootstrap.css">
</head>
<jsp:useBean id="productDAO" class="shopping.ProductRepository" scope="session"/>
<body>

	<jsp:include page="menu.jsp"/>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품 목록</h1>
		</div>
	</div>
	
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	
	<div class="container">
		<div class="row" align="center">
			<%
				for(Product product : listOfProducts) {
			%>
			<div class="col-md-4">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %>
				<p><%=product.getUnitPrice() %>원
				<p><a href="product.jsp?id=<%=product.getProductId() %>" class="btn btn-secondary" role="button">
					상세정보 &raquo;</a>
			</div>
			<%
				}
			%>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
</body>
</html>
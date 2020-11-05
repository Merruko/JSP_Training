<%@ tag language="java" pageEncoding="UTF-8"%>

<!-- 태그의 속성을 지정하는 부분 -->
<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>

<!-- Product 클래스를 사용하여 빈 객체 생성 -->
<jsp:useBean id="product" class="dto.Product"/>

<!-- 태그의 바디 부분 - 속성으로 지정한 항목의 값이 변수 형태로 전달됨 -->
<h2><jsp:doBody/></h2>
<table border="${border}" bgcolor="${bgcolor}" width="200" align="center">
	<%
		for(String item : product.getProductList()){
			out.println("<tr><td>" + item + "</td></tr>");
		}
	%>
</table>
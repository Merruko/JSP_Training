<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
<style>
	div{
		border: 1px dotted #333;
		display: inline-block;
		padding: 0 20px 20px;
	}
	h3{text-align: center;}
</style>
</head>
<body>
		<h2>구구단</h2>
		 		<%
		 		
						for(int i=2; i<10; i++){
							out.println("<div>");
							out.println("<h3>" + i + "단</h3>");
							for(int j=1; j<10; j++){
								out.println(i + "*" + j + "=" + i*j + "<br>"); 
							}
							out.println("</div>");
						}
		 		
				%>

</body>
</html>
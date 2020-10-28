<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>

		<%
			/* 3단 */
			for(int i=1; i<=9; i++){
				out.println("3*" + i + "=" + 3*i + "<br>" );
			}
		 %>
		 
			<br>
			
		<%
			/* 전체단 */
			for(int i=2; i<10; i++){
				for(int j=1; j<10; j++){
					out.println(i + "*" + j + "=" + i*j + "<br>"); 
				}
			}
		%>
	

</body>
</html>
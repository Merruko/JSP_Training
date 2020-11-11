<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.io.File" %>
    
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload 예제</title>
</head>
<body>

	<%
	
		String realFolder = "C:\\workspace\\JSP_Training\\WebContent\\RESOURCES\\main_images";
		MultipartRequest multi = new MultipartRequest(request, realFolder, 5*1024*1024, "UTF-8", new DefaultFileRenamePolicy());
		String name = multi.getParameter("name");		// 이름
		String subject = multi.getParameter("subject");	// 제목
		
		Enumeration<String> files = multi.getFileNames();	// 파일 정보 반환
		String file = files.nextElement();
		String filename = multi.getFilesystemName(file);	// 실제 서버에 저장된 파라미터
	
	%>
	
	<p>요청 파라미터 이름 : <%=name %>
	<p>요청 파라미터 제목 : <%=subject %>
	<p><img src="../RESOURCES/main_images/<%=filename %>">	<!-- 그림의 정보 : 상대경로 -->
	
</body>
</html>
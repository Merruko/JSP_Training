<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.apache.commons.fileupload.DiskFileUpload" %>
<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
     request.setCharacterEncoding("utf-8");
 %>
 
<%
	String path ="C:\\upload";
    
	DiskFileUpload upload = new DiskFileUpload();
       
	List items = upload.parseRequest(request);
	// 홈페이지에서 전송된 요청을 파라미터로 받아옴
       
	Iterator params = items.iterator(); // 요청 파라미터를 Iterator로 받아옴
       
	while(params.hasNext()){
		FileItem fileItem = (FileItem)params.next();
		if(!fileItem.isFormField()){
			String fileName = fileItem.getName();
			fileName= fileName.substring(fileName.lastIndexOf('\\')+1);
			// C:\\upload\\dog.png 라면 fileName 은 dog.png 이 된다.
             
			File file = new File(path+"/"+fileName);  // C:upload/dog.png
			fileItem.write(file);   // 파일을 서버의 폴더 경로에 저장
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Upload 예제</title>
</head>
<body>

</body>
</html>
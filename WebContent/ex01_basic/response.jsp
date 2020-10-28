<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
	<title>response 객체</title>
	<link rel="stylesheet" href="response.css">
</head>
<body>
	<form action="response-process.jsp">
	<div id="container">
	<!-- post방식은 주소표시줄에 전달정보가 보이지 않고, get은 정보가 보임 -->
		<fieldset>
			<legend>로그인 정보</legend>
                <ul>
                    <li>
                        <label for="userID">아 이 디</label>
                        <input type="text" name="userID">
                    </li>
                
                    <li>
                        <label for="userPW">비밀번호</label>
                        <input type="password" name="userPW">
                    </li>
                </ul>
		</fieldset>
        <input type="submit" value="로그인">
    </div>
    </form>
</body>	
</html>
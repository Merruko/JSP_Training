<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="member.Member" %>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 사이트</title>
<style type="text/css">
	#container{width: 600px; margin: 0 auto; text-align: center;}
	table{margin: 0 auto; width: 400px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"], [type="password"]{width: 200px; height: 20px;}
</style>
</head>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	int memId = Integer.parseInt(request.getParameter("memberId"));
	Member member = memDAO.getDB(memId);
%>

<script type="text/javascript">
	function checkPwd(){
		var form = document.updateForm;
		if(form.passwd.value != form.passwd_cf.value){
			alert("비밀번호를 동일하게 입력해주세요.");
			return false;
		}
	}
</script>

<body>
	<jsp:include page="menu.jsp" />
	<div id="container">
		<h2><center>회원 정보 수정</center></h2>
		<hr>
		<form name="updateForm" action="update-process.jsp?memberId=<%=member.getMemberId() %>" 
			  method="post" onsubmit="return checkPwd()">
			<table>
				<tr>
					<td>회원번호</td>
					<td><input type="text" name="memberId" value="<%=member.getMemberId()%>" style="background-color:grey" readonly></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="text" name="passwd" style="background-color:white" value="<%=member.getPasswd()%>"></td>
				</tr>
				<tr>
					<td>비밀번호 확인</td>
					<td><input type="text" name="passwd_cf" style="background-color:white" value="<%=member.getPasswd()%>"></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" style="background-color:white" value="<%=member.getName()%>"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<% if(member.getGender().equals("남")){ %>
						<input type="radio" name="gender" value="남" onclick="return(false);" checked>남
						<input type="radio" name="gender" value="여" onclick="return(false);">여
						<% }else{ %>
						<input type="radio" name="gender" value="남" onclick="return(false);">남
						<input type="radio" name="gender" value="여" onclick="return(false);" checked>여
						<% } %>
					</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td><input type="date" name="joinDate" value="<%=member.getJoinDate()%>" style="background-color:grey" readonly></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="저장">
						<input type="reset" value="리셋">
						<input type="button" value="취소" onclick="history.back(-1);">
					</td>
				</tr>
			</table>
		</form>			
	</div>
</body>
</html>
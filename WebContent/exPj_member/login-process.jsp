<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8"); 
%>

<jsp:useBean id="member" class="member.Member" />
<jsp:setProperty property="memberId" name="member"/>
<jsp:setProperty property="passwd" name="member"/>

<jsp:useBean id="memDAO" class="member.MemberDAO" scope="application" />
<jsp:setProperty property="*" name="memDAO"/>

<%
	int id = member.getMemberId();
	String pwd = member.getPasswd();
	int result = memDAO.login(id, pwd);
	
	if(result==1){
		session.setAttribute("sessionId", id);		//세션 부여(설정)
		response.sendRedirect("result.jsp?msg=2");
	}else if(result==0){
		out.println("<script>alert('비밀번호가 일치하지 않습니다.'); history.go(-1); </script>");
	}else if(result==-1){
		out.println("<script>alert('아이디가 일치하지 않습니다.'); history.go(-1); </script>");
	}else if(result==-2){
		out.println("<script>alert('데이터베이스 오류입니다'); history.go(-1); </script>");
	}
%>

</body>
</html>
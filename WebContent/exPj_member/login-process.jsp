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
	String id = member.getMemberId();
	String pwd = member.getPasswd();
	int result = memDAO.login(id, pwd);
	
	if(result==1){
		session.setAttribute("sessionId", id);		//세션 부여(설정)
		response.sendRedirect("result.jsp?msg=2");
	}else if(result==0){
		out.println("<script>alert('パスワードが一致しません。'); history.go(-1); </script>");
	}else if(result==-1){
		out.println("<script>alert('IDが一致しません。'); history.go(-1); </script>");
	}else if(result==-2){
		out.println("<script>alert('データベースのエアーです。'); history.go(-1); </script>");
	}
%>

</body>
</html>
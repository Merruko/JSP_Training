<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kiki's Management Service</title>
<style type="text/css">
	body{background: black; color: white;}
	#container{width: 100%; margin: 0 auto; text-align: center;}
	.title{height: 130px; width: 100%; font-size: 20px; background: red; line-height: 130px; color: black;}
	table{margin: 0 auto; width: 800px; border-collapse: collapse; text-align: center;}
	tr, td{border: 1px solid #222; padding: 10px;}
	input[type="text"]{width: 100%; height: 20px;}
	textarea{width: 100%; height: 350px;}
	a{text-decoration: none; color: black;}
</style>
</head>
<body>

<%
	String sessionId = null;	// 세션을 가져옴
	if(session.getAttribute("sessionId") != null){
		sessionId = (String)session.getAttribute("sessionId");
	}	
	if(sessionId == null){		// 세션이 없다면 (로그인 안했다면)
		out.println("<script> alert('ログインしてください。'); location.href='login.jsp'; </script>");
	}
	
	int bno = 0;				// 글 번호를 가져옴 
	if(request.getParameter("bno") != null){
		bno = Integer.parseInt(request.getParameter("bno"));
	}

	BoardDAO dao = new BoardDAO();
	Board board = dao.getDB(bno);
%>

   <jsp:include page="menu.jsp" />
   <div id="container">
      <div class="title">
         <h1>スレッド修正</h1>
      </div>
      <p>
      <form action="board-update-process.jsp?bno=<%=board.getBno() %>" method="post">
        <table>
            <tr>
               <td>No.</td>
               <td><input type="text" name="bno" style="background-color:grey" value="<%=board.getBno() %>" disabled></td>
            </tr>
            <tr>
               <td>Title</td>
               <td><input type="text" name="title" value="<%=board.getTitle() %>"></td>
            </tr>
            <tr>
               <td>Content</td>
               <td><textarea name="content"><%=board.getContent()%></textarea></td>
            </tr>
            <tr>
               <td>Name</td>
               <td><input type="text" name="memberId" style="background-color:grey" value="<%=board.getMemberId() %>" disabled></td>
            </tr>
            <tr>
               <td>Date</td>
               <td><input type="text" name="regDate" style="background-color:grey" value="<%=board.getRegDate() %>" disabled></td>
            </tr>

            <tr>
               <td colspan="2">
                  <input type="submit" value="確認">
                  <input type="reset"  value="書き直し">
                  <input type="button" onclick="history.back(-1);" value="取り消し">
               </td>
            </tr>
         </table>
      </form>
   </div>
</body>
</html>
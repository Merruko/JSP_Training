<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.sql.*" %>
    
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 삭제 처리</title>
</head>
<body>
   
   <%@ include file="dbconn.jsp" %>
   
   <%
      String id = request.getParameter("id");
      String pw = request.getParameter("passwd");
      String name = request.getParameter("name");
      
      
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      String sql = "SELECT id,passwd FROM member WHERE id = ?";    //id,passwd 검색
      try{ 
           pstmt = conn.prepareStatement(sql);
           pstmt.setString(1,id);
           rs = pstmt.executeQuery();
           if(rs.next()){   //일치하는 id가 있다면
              String rId = rs.getString("id");
              String rpw = rs.getString("passwd");
              if(id.equals(rId)&&pw.equals(rpw)){
                 sql = "DELETE FROM member WHERE id = ? AND passwd = ?";
                 pstmt = conn.prepareStatement(sql);
                 pstmt.setString(1,id);
                 pstmt.setString(2,pw);
                 pstmt.executeUpdate();
                 out.println("member 테이블을 삭제하였습니다");
              }else{
                 out.println("비밀번호가 일치하지 않습니다.");
              }
           }else{
              out.println("아이디가 일치하지 않습니다.");
           }
           
      }catch(Exception e){
         e.printStackTrace();
         out.println("member 테이블에 입력 실패했습니다.");
         
      }finally{
         if(pstmt != null)
            pstmt.close();
         if(conn != null)
            conn.close();
      }
   %>

</body>
</html>
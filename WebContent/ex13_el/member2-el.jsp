<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>

<style type="text/css">
	#container{
         width:100%; 
         margin:0 auto;
         border:1px solid #222;
         text-align: center;
    }
    table{width:400px; 
      border:1px solid #222; 
      border-collapse: collapse; 
      margin:0 auto;
    }
    td,th{width:200px ; 
      border:1px solid #222;
      padding:10px; 
    }
</style>

</head>
   <jsp:useBean id="member" class="eldto.Member"></jsp:useBean>
   <jsp:setProperty property="*" name="member"/>
   
<body>
      <div id = "container">
         <h2>회원 가입</h2>
            <hr>
               <table>
                  <tr>
                     <th>아이디</th>
                     <th>패스워드</th>
                     <th>이 름</th>
                  </tr>
                  <tr>
                     <td>${member.id}</td>
                     <td>${member.pwd}</td>
                     <td>${member.name}</td>
                  </tr>
      </table>   
   </div>

</body>
</html>
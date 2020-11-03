<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유효성 검사</title>
   
<script type="text/javascript">

	function checkMember(){
		var regExId = /^[a-zA-Zㄱ-ㅎㅏ-ㅣ가-힣]/;   //문자로 시작해야 함
		var regExPwd = /^[0-9]*$/;               //숫자만 사용
		var regExName = /^[가-힣]*$/;            //한글만 사용
		var regExPhone = /^\d{3}-\d{3,4}-\d{4}$/;   //3자리-3~4자리-4자리
         
		var form = document.Member;
         
		var id = form.id.value;
		var pwd = form.pwd.value;
		var name = form.name.value;
		var phone = form.phone1.value +"-"+ form.phone2.value +"-"+ form.phone3.value;
         
        if(!regExId.test(id)){
            alert("아이디는 문자로 시작해주세요.");
            form.id.select();
            return false;
        }
         
        else if(!regExPwd.test(pwd) || form.pwd.value==""){
            alert("비밀번호는 숫자만 입력해주세요.");
            form.pwd.select();
            return false;
        }
         
        if(!regExPhone.test(phone)){
            alert("연락처는 숫자만 입력해주세요.");
            form.phone.select();
            return false;
        }
        
        else if(!regExName.test(name)){
             alert("이름은 한글만 입력해주세요.");
             form.phone.select();
             return false;
        }
        
         form.submit();   // 체크가 끝나면 전송
	}
   
   </script>
   
<body>
   
   <h3>회원가입</h3>
   <form name="Member" action="validation4-process.jsp" method="post">
      <p>아이디 : <input type="text" name="id">
      <p>비밀번호 : <input type="password" name="pwd">
      <p>이름 : <input type="text" name="name">
      <p>연락처 : <select name="phone1">
                 <option value="010">010</option>
                 <option value="010">011</option>
                 <option value="010">016</option>
                 <option value="010">019</option>
               </select> - <input type="text" maxlength="4" size="4" name="phone2"> 
               - <input type="text" maxlength="4" size="4" name="phone3">
      <p><input type="button" value="가입하기" onclick="checkMember()">
   </form>
   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신제품 등록</title>
</head>
<body>
	<h2>신제품 상세등록 페이지</h2>
	<form action="form3-process.jsp" name="thirtyone" method="post">
	<p>신제품명 : <input type="text" name="menu"><input type="button" value="제품명 중복검사">
	<p>상품코드 : <input type="password" name="code">
	<p>카테고리 : <input type="text" name="category">
	<p>개발자명 : <input type="text" name="maker">
	<p>부서번호 : <input type="text" name="phone1" maxlength="4" size="4">
						 -<input type="text" name="phone2" maxlength="4" size="4">
						 -<input type="text" name="phone3" maxlength="4" size="4">
	<p>판매한정 : <input type="radio" name="place" value="국내" checked>국내점포
				  		   <input type="radio" name="place" value="해외">해외점포
	<p>첨가재료 : <input type="checkbox" name="material" value="과일" checked>과일
						   <input type="checkbox" name="material" value="견과류">견과류
					   	   <input type="checkbox" name="material" value="치즈">치즈
				  	       <input type="checkbox" name="material" value="천연색소">천연색소
	 <p><input type="submit" value="등록하기">
	  	<input type="reset" value="새로작성">
	 <p>특이사항<br><textarea name="comment" cols="30" rows="3" placeholder="제품 특이사항을 입력하세요."></textarea>
	</form>
</body>
</html>
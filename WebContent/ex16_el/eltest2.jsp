<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 예제</title>
</head>
<body>
	<h3>비교/관계 연산</h3>
	\${10==10} : ${10==10}<br>
	\${10 eq 10 } : ${10 eq 10}<br>
	
	\${"face"=="face"} : ${"face"=="face"}<br>
	\${"face" eq "face"} : ${"face" eq "face"}<br>	<!-- eq=equal -->
	
	\${10 < 20} : ${10 < 20}<br>
	\${10 lt 20} : ${10 < 20}<br>	<!-- lt = less than -->

	\${10 > 20} : ${10 > 20}<br>
	\${10 gt 20} : ${10 gt 20}<br>	<!-- gt = greater than -->
	
	<h3>논리 연산</h3>
	\${(4==4) && (7==7)} : ${(4==4) && (7==7)}<br>
	\${(4==4) and (7!=7)} : ${(4==4) and (7!=7)}<br>
	
	\${(4 != 4) || (7==7)} : ${(4 != 4) || (7==7)}<br>
	\${(4 == 4) or (7!=7)} : ${(4 == 4) or (7!=7)}<br>
	
	\${!(4==4)} : ${!(4==4)}<br>
	\${not(4==4)} : ${not(4==4)}<br>
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test() 예제</title>
</head>
<body>

	<button onclick="myFunction()">Try it</button>
         
    <p id = "demo"></p>
         
    <script type="text/javascript">
		function myFunction(){
		var str = "The best things in life are free";
		var patt = new RegExp('e');
		var result = patt.test(str);
            
		document.getElementById("demo").innerHTML = result;
	}
         
    </script>

</body>
</html>
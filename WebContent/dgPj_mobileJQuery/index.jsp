<!DOCTYPE HTML>

<html>

<head>

<title>영화 정보</title>


<!-- 모바일 최적화 -->

<meta name="viewport" content="width=device-width, initial-scale=1" />


<!-- 제이쿼리 라이브러리 사용 , CDN 방식 -->

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.css" />
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
<script src="http://code.jquery.com/mobile/1.0.1/jquery.mobile-1.0.1.min.js"></script>

</head>


<!-- 로그인 알림창 -->

<script>
function login()
{
	alert("환영합니다!");
}
</script>



<body>


<!-- 로그인 페이지 -->


<div>

		<div data-role="page" id="login" >
		<div data-role="header" data-theme="b" >
			<h1>영화 정보</h1>
		</div>
		<div data-role="content" style="text-align:center">
				</br></br><img src="pic/login.png" width=50% height=50%></br></br>
			<ul data-role="listview" data-inset="true" data-count-theme="e">
			<center>
				<li></br></br>아이디 <input type="text" name="id" size=10 /></li></br></br></br>
				<li>비밀번호 <input type="password" name="pw" /></li></br></br></br>
			</center>
			</ul>
			<center><a href="#home"><input type="button" value="로그인" onClick="login()" /></a></br></center>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h1>로그인 하세요</h1>
		</div>
	</div>
	

<!-- 홈 페이지 -->


	<div data-role="page" id="home" >
		<div data-role="header" data-theme="b" >
			<h1>영화 정보</h1>
		</div>
		<div data-role="content" style="text-align:center">
				<img src="pic/home.jpg" width=50% height=50%>
			<ul data-role="listview" data-inset="true" data-count-theme="e">
				<li><a href="#page2">추천 영화</a></li>
				<li><a href="#page3">영화 모음</a></li>
				<li><a href="javascript:void(window.open('https://movie.naver.com/movie/running/current.nhn','네이버','width=800,height=900'))">현재 개봉작</a></li>
			</ul>
		</div>
		<div data-role="footer" data-position="fixed" data-theme="b">
			<h1>환영합니다</h1>
		</div>
	
	</div>



<!-- 홈 버튼/뒤로가기 버튼 -->


	<div data-role="page" id="page1" >
		<div data-role="header" data-position="fixed" data-theme="b">
			<a href="#back" data-icon="back" data-rel="back" data-direction="reverse">Back</a>
			<a href="#home" data-icon="home" data-iconpos="notext">Home</a>
			<div data-role="navbar">
			<ul>
				<li><a href="#page2" data-direction="reverse">추천 영화</a></li>
				<li><a href="#page3" data-transition="fade">영화 모음</a></li>
                <li><a href="javascript:void(window.open('https://movie.naver.com/movie/running/current.nhn','네이버','width=800,height=900'))">현재 개봉작</a></li>
			</ul>
			</div>
		</div>
		<div data-role="content" >
		</div>




<!-- 추천 영화 페이지 -->


		<div data-role="footer" data-position="fixed" data-theme="b">
			<h1>환영합니다</h1>
		</div>
	</div>

	<div data-role="page" id="page2" >
		<div data-role="header" data-position="fixed" data-theme="b">
			<a href="#back" data-icon="back" data-rel="back" data-direction="reverse">Back</a>
				<h1>영화 정보</h1>
			<a href="#home" data-icon="home" data-iconpos="notext">Home</a>
			<div data-role="navbar">
			<ul>
				<li><a href="#page2">추천 영화</a></li>
				<li><a href="#page3">영화 모음</a></li>
                <li><a href="javascript:void(window.open('https://movie.naver.com/movie/running/current.nhn','네이버','width=800,height=900'))">현재 개봉작</a></li>
			</ul>
			</div>
		</div>
		<div data-role="content">
			<h3><center>장르별 추천 영화</center></h3>
			<div data-role = "collapsible" data-theme="a">
				<h3>멜로</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=19031"><img src="pic/loveletter.jpg" width=300 height=500><br><br>러브레터</a><br><br>
					연도 : 1995 <br>
					감독 : 이와이 슌지 <br>
					출연 : 나카야마 미호, 토요카와 에츠시 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>액션</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=47152"><img src="pic/taken.jpg" width=300 height=500><br><br>테이큰</a><br><br>
					연도 : 2008 <br>
					감독 : 피에르 모렐 <br>
					출연 : 리암 니슨, 매기 그레이스 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible"data-theme="a">
				<h3>스릴러</h3>
				<p><center>
					<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=121051"><img src="pic/goksung.jpg" width=300 height=500><br><br>곡성</a><br><br>
					연도 : 2016 <br>
					감독 : 나홍진 <br>
					출연 : 곽도원, 황정민, 쿠니무라 준 <br>
					<br>
				</center></p>
			</div>
			
			<div data-role = "collapsible" data-theme="a">
				<h3>시대극</h3>
				<p><center>
					<a href="http://movie.naver.com/movie/bi/mi/basic.nhn?code=150637"><img src="pic/namhan.jpg" width=300 height=500><br><br>남한산성</a><br><br>
					연도 : 2017 <br>
					감독 : 황동혁 <br>
					출연 : 이병헌, 김윤석 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>범죄</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=91031"><img src="pic/newworld.jpg" width=300 height=500><br><br>신세계</a><br><br>
					연도 : 2012 <br>
					감독 : 박훈정 <br>
					출연 : 이정재, 최민식, 황정민 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>SF</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=52515"><img src="pic/inception.jpg" width=300 height=500><br><br>인셉션</a><br><br>
					연도 : 2010 <br>
					감독 : 크리스토퍼 놀란 <br>
					출연 : 레오나르도 디카프리오, 와타나베 켄, 조셉 고든 레빗 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>애니메이션</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=19303"><img src="pic/momo.jpg" width=300 height=500><br><br>원령공주</a><br><br>
					연도 : 2003 <br>
					감독 : 미야자키 하야오 <br>
					출연 : 마츠다 요지, 미와 아키히로 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>전쟁</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=31778"><img src="pic/enemy.jpg" width=300 height=500><br><br>에너미 앳 더 게이트</a><br><br>
					연도 : 2001 <br>
					감독 : 장 자크 아노 <br>
					출연 : 조셉 파인즈, 주드 로 <br>
					<br>
				</center></p>
			</div>

			<div data-role = "collapsible" data-theme="a">
				<h3>음악</h3>
				<p><center>
					<a href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=119632"><img src="pic/we.jpg" width=300 height=500><br><br>위플래쉬</a><br><br>
					연도 : 2010 <br>
					감독 : 데이미언 셔젤 <br>
					출연 : 마일즈 텔러, J.K. 시몬스 <br>
					<br>
				</center></p>
			</div>

		</div>

		<div data-role="footer" data-position="fixed" data-theme="b">
			<h1>환영합니다</h1>
		</div>
	</div>



<!-- 영화 모음 페이지 -->


	<div data-role="page" id="page3" >
		<div data-role="header" data-position="fixed" data-theme="b">
			<a href="#back" data-icon="back" data-rel="back" data-direction="reverse">Back</a>
				<h1>영화 정보</h1>
			<a href="#home" data-icon="home" data-iconpos="notext">Home</a>
			<div data-role="navbar">
			<ul>
				<li><a href="#page2" data-direction="reverse">추천 영화</a></li>
				<li><a href="#page3" data-transition="fade">영화 모음</a></li>
                <li><a href="javascript:void(window.open('https://movie.naver.com/movie/running/current.nhn','네이버','width=800,height=900'))">현재 개봉작</a></li>
			</ul>
			</div>
		</div>
		<div data-role="content" >
			<ul data-role="listview" data-filter="true" data-filter-placeholder="검색창">
				<li><a href="#m1"><img src="pic/lala.jpg">라라랜드</a></li>
				<li><a href="#m2"><img src="pic/sho.jpg">쇼생크 탈출</a></li>
				<li><a href="#m3"><img src="pic/three.jpg">세얼간이</a></li>
				<li><a href="#m4"><img src="pic/murder.jpg">살인의 추억</a></li>
				<li><a href="#m5"><img src="pic/leon.jpg">레옹</a></li>
				<li><a href="#m6"><img src="pic/hirosue.jpg">철도원</a></li>
				<li><a href="#m7"><img src="pic/ienai.jpg">말할 수 없는 비밀</a></li>
				<li><a href="#m8"><img src="pic/frozen.jpg">겨울왕국</a></li>
				<li><a href="#m9"><img src="pic/lapun.jpg">라푼젤</a></li>
				<li><a href="#m10"><img src="pic/titanic.jpg">타이타닉</a></li>
			</ul>			

		</div>

		<div data-role="footer" data-position="fixed" data-theme="b">
			<h1>환영합니다</h1>
		</div>

</div>



<!-- 영화 모음 포스터 확대 -->

<div data-role="page" id="m1">
		<div data-role="header">
			<h1>라라랜드</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/lala.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m2">
		<div data-role="header">
			<h1>쇼생크 탈출</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/sho.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m3">
		<div data-role="header">
			<h1>세얼간이</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/three.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>		

<div data-role="page" id="m4">
		<div data-role="header">
			<h1>살인의 추억</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/murder.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m5">
		<div data-role="header">
			<h1>레옹</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/leon.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m6">
		<div data-role="header">
			<h1>철도원</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/hirosue.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m7">
		<div data-role="header">
			<h1>말할 수 없는 비밀</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/ienai.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m8">
		<div data-role="header">
			<h1>겨울왕국</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/frozen.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m9">
		<div data-role="header">
			<h1>라푼젤</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/lapun.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	

<div data-role="page" id="m10">
		<div data-role="header">
			<h1>타이타닉</h1>
		</div>
		<div data-role="content">
			<center><img src="pic/titanic.jpg" width="300" height="500"></center>
		</div>
		<center><div data-role="footer">
			<a href="#page3">뒤로가기</a>
		</div></center>
	</div>	


</body>

</html>
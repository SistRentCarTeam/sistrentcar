<%@page import="model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
 
<html class="wide wow-animation" lang="en">
<head>
<!-- Site Title-->
<title>SIST RENTCAR</title>
<!--     <meta name="format-detection" content="telephone=no"> -->
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta charset="UTF-8">
<!-- Stylesheets -->
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/fonts.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
	 

	<style type="text/css">
 .abc {
	padding: 10px 1px;
}
 
.jCP1 {
	font-family: '나눔스퀘어', 'NanumSquare', '나눔바른고딕', 'NanumBarunGothic',
		'나눔고딕', 'NanumGothic', '돋움', Dotum, sans-serif;
	text-align: center;
		margin-left: 220px;
	padding: 0;
	font-size: 32px;
	padding-top: 150px;
	margin-bottom: 15px;
	color:  black;
}

.jCP2 {
	font-family: '나눔스퀘어', 'NanumSquare', '나눔바른고딕', 'NanumBarunGothic',
		'나눔고딕', 'NanumGothic', '돋움', Dotum, sans-serif;
	color:  black;
	margin-left: 560px;
	padding: 0;
	font-size: 32px;
	margin-bottom: 25px;
}

.jCP3 {
	font-family: '나눔스퀘어', 'NanumSquare', '나눔바른고딕', 'NanumBarunGothic',
		'나눔고딕', 'NanumGothic', '돋움', Dotum, sans-serif;
	text-align: center;
	margin-left: 220px;
	padding: 0;
	font-size: 16px;
	color:  black;
}
a.goHome {
text-align: center;
margin-left: 650px;
padding: 0;
text-decoration: none;
font-size: inherit;
font-family: inherit;
display: inline-block;
width: 195px;
height: 50px;
line-height: 50px;
color: white;
border-radius: 5px;
background-color: gray;
}

a.goLogin {
margin-left: 650px;
padding: 0;
text-decoration: none;
font-size: inherit;
font-family: inherit;
display: inline-block;
width: 195px;
height: 50px;
line-height: 50px;
background-color:#ffa900;
color: white;
border-radius: 5px;
text-align: center;
}

 
</style>
	
	
</head>
<body>

	<!------------------ .page=전체 영역 ------------------->
	<div class="page">
		<!------------------ Header ------------------->
		<header class="section page-header">
			<div class="rd-navbar-wrap rd-navbar-corporate">
				<!----- 메뉴바 --------->
				<nav class="rd-navbar" id="menu">
					<div class="rd-navbar-inner">
						<!-- 모바일 var - 메뉴토글-->
						<div class="rd-navbar-panel">
							<button class="rd-navbar-toggle"
								data-rd-navbar-toggle=".rd-navbar-nav-wrap">
								<span></span>
							</button>
							<!-- logo -->
							<div class="rd-navbar-brand">
								<a class="brand-name" href="index.html"><img
									class="logo-default" src="../images/logo.png" alt="" width="208"
									height="46" /><img class="logo-inverse"
									src="../images/logo-inverse-208x46.png" alt="" width="208"
									height="46" /></a>
							</div>
						</div>
						<!-- 웹 var. 메뉴바 -->
						<div class="rd-navbar-aside-center">
							<div class="rd-navbar-nav-wrap">
								<ul class="rd-navbar-nav">
									<li class="active"><a href="#menu">HOME</a> <!-- 예약하기/예약확인/ -->
									</li>
									<li><a href="#branchGuide">지점안내</a></li>
									<li><a href="#reviews">이용후기</a></li>
									<li><a href="typography.html">고객센터</a></li>
								</ul>
							</div>
						</div>
						<div class="rd-navbar-aside-right">
 

							<%/*추가*/
								if (session.getAttribute("id") == null) {
							%>
							<a class="button button-sm button-secondary button-nina"
								href="login.jsp">Login</a>
							<%
								} else {
									String userid = (String) session.getAttribute("id");
							%>
							<a class="button button-sm button-secondary button-nina" href="logoutPro.jsp">Logout</a>
							<%
								}
							%>


							<a class="button button-sm button-secondary button-nina"
								href="joinRentcar.jsp">Join</a>
						</div>
					</div>
				</nav>
			</div>
		</header>

 

 
	<div id="container">
		<div id="contentsWrap" class="contentsWrap">
			<div class="contents">
				<h1 class="title"></h1>

				<div class="tbWrapRt"
					style="padding-right: 220px; margin-top: 30px;">
 
					<p class="jCP1">${member2.memid}님감사합니다.</p>
					<p class="jCP2">회원가입이 완료되었습니다.</p>
					<p class="jCP3">로그인하시면 회원 서비스를 이용하실 수 있습니다.</p>
					
					<div class="linkBox"><br>
						<a href="../index.jsp" class="goHome">홈으로</a><br><br>
						<a href="login.jsp" class="goLogin">로그인</a>

      
		</div>
	</div>

	<div class="modal">
	</div>
	</div><!--page전체  -->
	<!-- Global Mailform Output-->
	 
	<!-- Javascript-->
	<script src="../js/core.min.js"></script>
	<script src="../js/script.js"></script>
	<!-- coded by barber-->
</body>
</html>
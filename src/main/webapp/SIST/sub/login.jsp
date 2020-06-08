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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	
<script>

$(function(){
	$("input#loginbtn").click(function(){
		if($("input#userId").val().length==0){
			alert('정보를 입력해주세요');
			 
		}
		document.loginFrm.submit();
	});
	
/* 	$("#idSave").change(function(){
		if($(#idSave).is(":checked")){
			
			
		}
	}); */
	
	/*  $("#idSaveCheck").change(function(){ // 체크박스에 변화가 있다면,
        if($("#idSaveCheck").is(":checked")){ // ID 저장하기 체크했을 때,
            var userInputId = $("input[name='id']").val();
            setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
        }else{ // ID 저장하기 체크 해제 시,
            deleteCookie("userInputId");
        }
    }); */
	
});

</script>

	<style type="text/css">
	
	label{
	width: 100px;
	height: 10px;
	font-size: medium;
	}
	
	form{
	padding-left: 40px;
	}

 html {
		height: 100%;
	}
	
	body {
	    width:100%;
	    height:100%;
	    margin: 0;
  		padding-top: 0px;
  		padding-bottom: 40px;
  		font-family: "Nanum Gothic", arial, helvetica, sans-serif;
  		background-repeat: no-repeat;
  		background:gray;
	}
	
    .card {
         margin: 0 auto; /* Added */
        float: none; /* Added */
        margin-bottom: 10px; /* Added */
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        padding-top: 10px;
        margin-top: 100px; 
	}
	
	.form-signin .form-control {
  		position: relative;
  		height: auto;
  		-webkit-box-sizing: border-box;
     	-moz-box-sizing: border-box;
        	 box-sizing: border-box;
  		padding: 10px;
  		font-size: 16px;
	}
form input#loginbtn{
margin-left: -20px;
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
									class="logo-default" src="images/logo.png" alt="" width="208"
									height="46" /><img class="logo-inverse"
									src="images/logo-inverse-208x46.png" alt="" width="208"
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
							<a class="button button-sm button-secondary button-nina"
								href="joinRentcar.jsp">Join</a>
							<%
								} else {
									String userid = (String) session.getAttribute("id");
							%>
							<a class="button button-sm button-secondary button-nina" href="logoutPro.jsp">Logout</a>
							<%
								}
							%>


						</div>
					</div>
				</nav>
			</div>
		</header>
		<!------------------ 슬라이드 - 내용수정 --------------------->
		 
								<!-- <h4>SIST RENT CAR</h4> -->
								
								
	<div class="card align-middle" style="width:20rem; border-radius:20px;">
		<div class="card-title" style="margin-top:20px;">
			<h2 class="card-title text-center" style="color:#113366;">LOGIN</h2>
		</div>
		<div class="card-body">
		
		
		
 	<form id="loginFrm"  class="form" action="loginPro.jsp"  name="loginFrm" method="post">
        <h5 class="form-signin-heading">로그인 정보를 입력하세요</h5> <br>
        
       <label>아이디</label>
      	 <input type="text" id="userId" name="userId" placeholder="아이디 입력" maxlength="50" autocomplete="off" class="ui-autocomplete-input">   <br>  
	  <label>비밀번호</label>
	     <input type="password" id="userpassword" name="userpassword" maxlength="50" autocomplete="off">
       
         <div class="wrap-check">
										<!--클릭시 label에 selected 클래스 추가-->
										<label class="i-check"><input type="checkbox" name="idSave" id="idSave">아이디 저장</label>
										 
									</div>
        <input type="submit" id="loginbtn" name="loginbtn" class="btn btn-lg btn-primary btn-block" value="로그인"/> 
      </form>
      
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
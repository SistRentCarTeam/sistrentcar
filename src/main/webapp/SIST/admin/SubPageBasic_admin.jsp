<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button#btnsearch").click(function(){
		//alert('test');
		$("form").submit();
	});	
});
</script>
  <head>
    <!-- Site Title-->
    <title>Admin var.SIST RENTCAR</title>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta charset="utf-8">
 	<!---------------------- Stylesheets ------------------->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/fonts.css">
	<link href="https://fonts.googleapis.c
	om/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
  </head>
  <body>
    <!------------------ .page=전체 영역 ------------------->
    <div class="page" id="page">
      <!------------------ Header ------------------->
      <header class="section page-header">
        <div class="rd-navbar-wrap rd-navbar-corporate">
          <!----- 메뉴바 --------->
          <nav class="rd-navbar"  id="menu">
            <div class="rd-navbar-inner">
              <!-- 모바일 var - 메뉴토글-->
              <div class="rd-navbar-panel">
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- logo -->
                <div class="rd-navbar-brand"><a class="brand-name" href="../adminIndex.jsp"><img class="logo-default" src="../images/logo.png" alt="" width="208" height="46"/><img class="logo-inverse" src="../images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
              </div>
              <!-- 웹 var. 메뉴바 -->
              <div class="rd-navbar-aside-center">
                <div class="rd-navbar-nav-wrap">
                  <ul class="rd-navbar-nav">
                    <li><a href="#">회원관리</a>
                    </li>
                    <li><a href="#">예약관리</a>
                    </li>
                    <li><a href="#">지점관리</a>
                    </li>
                    <li><a href="#">차량관리</a>
                    </li>
                    <li><a href="#">게시판관리</a>
                    </li>
                    <li><a href="#">통계</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="rd-navbar-aside-right">
              	<p>[ADMIN]OOO님 환영합니다.</p>
              	<a class="button button-sm button-secondary button-nina" href="../index.jsp">LOGOUT</a>
              </div>
            </div>
          </nav>
        </div>
      </header>
     
     <!------------------------------ 내용입력 ------------------------>
     <section class="section section-lg bg-gray-lighter novi-background bg-cover text-center" id="reviews">

      </section>
 
      <!-------------------------- Footer ---------------------->
      <footer class="section page-footer page-footer-minimal novi-background bg-cover text-center bg-gray-darker">
        <div class="container container-wide">
          <div class="row row-fix justify-content-sm-center align-items-md-center row-30">
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-left"><a href="../adminIndex.jsp"><img class="inverse-logo" src="../images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
            <div class="col-md-10 col-lg-7 col-xl-4">
              <p class="right">가시안이며 비상업적 취업지원 포트폴리오 용도로만 사용됩니다.<br/>오른쪽 이니셜 클릭시 개별 email로 연결됩니다.</p>
            </div>
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-right">
              <ul class="group-xs group-middle"> 
                <li><a class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi" href="#">CHJ</a></li>
                <li><a class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi" href="#">PIC</a></li>
                <li><a class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi" href="#">YMM</a></li>
                <li><a class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi" href="#">CSH</a></li>
                <li><a class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi" href="#">LHJ</a></li>
              </ul>
            </div>
            
            
          </div>
        </div>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"> </div>
    <!-- Javascript-->
    <script src="../js/core.min.js"></script>
    <script src="../js/script.js"></script>
    <!-- coded by barber-->
  </body>
</html>
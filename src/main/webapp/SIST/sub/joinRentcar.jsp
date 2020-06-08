 
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
	
	
<!DOCTYPE html>
 <html class="wide wow-animation" lang="en"> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script  src="../js/member.js" charset="UTF-8"></script>
  
 <style>

table{
/* width: 60%;
height: 50% ; */
margin: auto ;


}


.abc {
  padding: 10px 1px;
}
 
.nav-gnb > li {
margin: 0 15px !important;
}
@media (min-width: 1481px) {
.nav-gnb > li {
margin: 0 30px !important;
}
}
.nav-gnb > li:first-child {
margin-left :0 !important;
}

.main_menu {
height: 533px !important;
background-position: 280px 345px !important;
}

 
a#send{
   
      font-size:12px;
      color:white;
      padding:10px 50px 10px 50px;
    background: #ffa900;
      border-radius: 10px;
 
      
     

}

 
 
</style>
  
 <head>
 
 <!-- Site Title-->
<title>SIST RENTCAR</title>
<!--     <meta name="format-detection" content="telephone=no"> -->
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<meta charset="utf-8">
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
<script src="../js/core.min.js"></script>
	<script src="../js/script.js"></script>
 
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
								<a class="brand-name" href="../index.jsp"><img
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
									<li class="active"><a href="../index.jsp">HOME</a> <!-- 예약하기/예약확인/ -->
									</li>
									<li><a href="#branchGuide">예약하기</a></li>
									<li><a href="#reviews">커뮤니티</a></li>
									<li><a href="typography.html">이용후기</a></li>
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
							<b><%=userid%>님 환영합니다</b>
							<a class="button button-sm button-secondary button-nina" href="logoutPro.jsp">Logout</a>
							<a class="button button-sm button-secondary button-nina" name="mypage" id="mypage" >MyPage</a>
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

	<section>
	<body class="home">	

		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<!-- <h1 align="left" class="title">회원가입</h1> -->
					<div class="tbWrapRt" style="padding-right: 220px; margin-top: 80px;  ">
						
						<form action="memberInsert.jsp" name="joinFrm" method="post" >
	
						<table style="margin-left: 500px;">
 
								<caption></caption>
								<colgroup>
									<col width="95" />
									<col />
								</colgroup>
								<tbody>
								<tr>
									<th style=" width:100px; height:25px;">이름</th>
									 
									<td><input class="abc" type="text" name="name" class="inputText"  style=" width:200px; height:25px;" /><br><br></td>
									 
								</tr> 
								<tr>
									<th style=" width:200px; height:25px;"> 아이디</th> 
									 
									<td >
									<input class="abc" type="text" name="id" id="id"  class="inputText" style="text-align:center; width:200px; height:25px;" />
									<span class="buttonFuc"><a href="#" id="idCheck">중복체크</a></span><br><br>
									<span id="rsp"></span> 
									</td>
									 
								</tr> 
								<tr>
									<th>비밀번호</th> 
									<td><input type="password"  class="abc" name="password1" class="inputText" id="password1" style="text-align:center; width:200px; height:25px;"  /></td>
								</tr> 
								<tr>
									<th>비밀번호 확인</th>
									<td class="abc">
									<input type="password" name="password2" class="inputText"  id="password2" style="text-align:center; width:200px; height:25px;"  /><br><br>
									<input type="hidden" name="password" class="inputText" size="30" id="password"/>
									</td>
								</tr> 
								<tr>
									<th>성별</th> 
									<td>
										<label for="male"><input type="radio" checked="checked" class="inputRadio" name="gender" id="male" value="남자"/>남</label>
										<label for="female"><input type="radio" class="inputRadio" name="gender" id="female" value="여자" />여</label><br><br>
									</td>
								</tr> 
								<tr>
									<th>생년월일</th> 
									<td class="abc">
										<input type="text" name="year" class="inputText" style="text-align:center; width:70px; height:25px;"/> 년
										<input type="text" name="month" class="inputText" style="text-align:center; width:70px; height:25px;" /> 월
										<input type="text" name="day" class="inputText" style="text-align:center; width:70px; height:25px;"/> 일
										<input type="hidden" name="birth"/>
									</td>
								</tr>
								<tr>
									<th>주소</th>
									<td>
										<p class="mgb3"><br>
										
					 	<input type="text" name="post1" class="inputText" style="text-align:center; width:70px; height:25px;"/> - <input type="text" name="post2" class="inputText" style="text-align:center; width:70px; height:25px;" />
						 <span class="buttonFuc"><a href="javascript:sendPost()">우편번호</a></span><br>
										
										</p>
										<p class="mgb3">
											<input type="hidden" name="address"/>
							 	<input type="text" name="address1" class="inputText"  readonly="readonly" style="text-align:center; width:200px; height:25px;"/> 
								<input type="text" name="address2" class="inputText" style="text-align:center; width:200px; height:25px;" />
										</p> 
									</td>
								</tr> 
								<tr>
									<th >이메일</th>
									<td><br>
									<input type="text" name="email1" class="inputText" style="text-align:center; width:100px; height:25px;"  />
									@
									<input type="text" name="email2" disabled="disabled" style="text-align:center; width:100px; height:25px;"/> 
									
									<select id="sel" name="email3" style="text-align:center; width:100px; height:25px;">
									  <option selected="selected" value="empty" style="text-align:center; width:100px; height:25px;">선택하세요</option>
									  <option value="direct">직접입력</option>
									  <option value="daum.net">daum.net</option>
									  <option value="naver.com">naver.com</option>
									  <option value="gmail.com">gmail.com</option> 
									</select><br><br>
									
									<input type="hidden" name="email"/>
									
									</td> 								 
								</tr> 
								
								<tr>
									<th>휴대폰번호</th>
									<td >
										<input type="text" name="tel1" id="tel1" class="inputText" style="text-align:center; width:70px; height:25px;" /> - 
										<input type="text" name="tel2" id="tel2" class="inputText" style="text-align:center; width:70px; height:25px;" /> - 
										<input type="text" name="tel3" id="tel3" class="inputText" style="text-align:center; width:70px; height:25px;" />
										<input type="hidden" name="tel" id="tel" class="inputText" size="10" />
									</td>
 	
								</tr>
								
								
								<tr style="height: 200px; position: absolute; right: 400px; top:600px;">
									
								</tr>
								<tr>
									<td style="text-align: center; height: 100px;" colspan="2"> 
									<span > <a class=""  href="#" name="send" id="send" >등록</a></span>
									</td>
								</tr>
								</table>
					</form>
						</div>
					</div>
				</div>
			</div>
 
	
	</section>


      <!-------------------------- Footer ---------------------->
      <footer class="section page-footer page-footer-minimal novi-background bg-cover text-center bg-gray-darker">
        <div class="container container-wide">
          <div class="row row-fix justify-content-sm-center align-items-md-center row-30">
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-left"><a href="index.html"><img class="inverse-logo" src="../../images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
            <div class="col-md-10 col-lg-7 col-xl-4">
              <p class="right">가시안이며 비상업적 취업지원 포트폴리오 용도로만 사용됩니다.<br/>왼쪽 이니셜 클릭시 개별 email로 연결됩니다.</p>
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
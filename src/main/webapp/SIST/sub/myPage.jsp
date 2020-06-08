<%@page import="model.MemberBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.MemberDao"%>
<%@page import="model.RentCarBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>

<html class="wide wow-animation" lang="en">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("a#redata").load("myPage_Reserve.jsp");

	});
</script>
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
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

<style type="text/css">
table#memberInfo {
	padding-left: 500px;
}

h, td, tr, input, textarea, select, FORM {
	font-family: 고딕;
	font-size: 1em;
	 
}
 
input{
width: 200px;
height: 50px;
text-align:center;
 align-content: center;
font-family: "맑은고딕"; Sans-Serif; bold;
 
}


td{
width: 200px;
height: 10px; 
text-align: center;
font-family: 바탕체, "Times New Roman", sans-serif;
font-weight: bold;
color: black;  

{
border: 1px solid black;

}
</style>

</head>
<%
	String id = session.getAttribute("id").toString();

	MemberBean memInfo = new MemberBean();
	memInfo = MemberDao.memberInfo(id);
%>



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
									<li><a style="font-size: 25px;">MYPAGE</a> <!-- 예약하기/예약확인/ -->
									</li>
									<!--  <li class="active"><a href="#branchGuide">마이페이지</a></li>   -->
									<li class="active"><a href="myPage.jsp">내정보</a></li>
									<li><a href="myPage_Reserve.jsp">예약확인</a></li>
									<li><a href="myQnA.jsp">문의내역</a></li>
								</ul>
							</div>
						</div>
						<div class="rd-navbar-aside-right">


							<%
								/*추가*/
								if (session.getAttribute("id") == null) {
							%>
							<a class="button button-sm button-secondary button-nina"
								href="login.jsp">Login</a>
							<%
								} else {
									String userid = (String) session.getAttribute("id");
							%>
							<b><%=userid%>님 환영합니다</b> <a
								class="button button-sm button-secondary button-nina"
								href="logoutPro.jsp">Logout</a> <a
								class="button button-sm button-secondary button-nina"
								name="mypage" id="mypage">MyPage</a>
							<%
								}
							%>


							<a class="button button-sm button-secondary button-nina"
								href="joinRentcar.jsp">Join</a>
						</div>
					</div>
				</nav>
				<!----- 메뉴바 --------->


			</div>
		</header>
	<h5 style="text-align: center; margin-top: 50px; font-size: 30px; color: #ffa900;"> &nbsp;&nbsp;내 정보 확인</h5>
					<div id="lineee"></div>
					
					
					
		<table name="memberInfo" id="memberInfo" border="1px;"  
			style="margin-top: 50px;  width:50%; background-color: white; margin-left: 300px; boborder-radius: 2px; ">

		
					
						
							<tr>
 
								<td style="width: 200px; text-align: center;">아이디</td>
								<td><input type="text" name="id" id="id" class="inputText"  readonly 
									value="<%=memInfo.getMemid()%>" style="width: 200px; height: 40px; text-align: center; border-style: none;" /></td>
							</tr>



							<tr>
								<td>비밀번호</td>
								<td><input type="text" name="password1" class="inputText" readonly  style="width: 200px; height: 40px; text-align: center; border-style: none;"
									id="password1" value="<%=memInfo.getMempw()%>" /></td>
							</tr>

							<tr>
								<td>성명</td>
								<td><input type="text" name="name" class="inputText" readonly  style="width: 200px; height: 40px; text-align: center; border-style: none;"
									value="<%=memInfo.getMname()%>" /></td>
							</tr>



							<tr>
								<td>이메일</td>
								<td><input type="text" name="email1" class="inputText" readonly   style="width: 200px; height: 40px; text-align: center; border-style: none;"
									value="<%=memInfo.getMemail()%>" /></td>
							</tr>

 

                     <%
                      String data = memInfo.getMadress();

                      String []adress = data.split("/");
                       String adress1=adress[0];
                       String adress2=adress[1];	
                       String adress3=adress[2];  
                         
                        
                       %>
							<tr>
								<td>주소</td>
								<td><input type="text" name="post1" class="inputText" readonly   style="width: 200px; height: 40px; text-align: center; border-style: none;"
									value="우편번호 : <%=adress1%>" /><br>  
								 <input type="text" name="post1" class="inputText" readonly  style="width: 100%; text-align: center; border-style: none;"
									value="<%=adress2%>" /> <br>
								   <input type="text" name="post1" class="inputText" readonly  style="width: 100%; text-align: center; border-style: none;"
									value="상세주소: <%=adress3%>" />  
									</td>
									
							</tr>



							<tr>
								<td>휴대폰</td>
								<td><input type="text" size="6" name="tel1" id="tel1" readonly  style="width: 200px; height: 40px; text-align: center; border-style: none;"
									class="" value=""<%=memInfo.getMemtel()%>" /></td>
<%-- 								<td><input type="text" size="6" name="tel1" id="tel1" readonly  style="width: 200px; height: 40px; text-align: center; border-style: none;"
									class="" value="<%=//memInfo.getMemtel()%>" /></td> --%>
							</tr>

 
					
		</table>



	</div>
	<!-- Global Mailform Output-->
	<div class="snackbars" id="form-output-global"></div>
	<!-- Javascript-->
	<script src="../js/core.min.js"></script>
	<script src="../js/script.js"></script>
	<!-- coded by barber-->
</body>
</html>
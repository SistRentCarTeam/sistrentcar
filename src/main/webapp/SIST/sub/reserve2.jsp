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
		$("button#btnsearch").click(
				function() {
					//alert('test');
					if ($("input[name='date1']").val().length > 0
							&& $("input[name='date2']").val().length > 0) {
						$("form#reserve").submit();
					} else {
						alert('날짜를 선택해주세요.');
					}
				});
		$("button#btnrsv").click(function() {
			/* $.ajax({
				url:'statemod.do',
				datatype:'text',
				type:'post',
				data:{rcno:this.no},
				success:function(data){
					
				},error:function(){
					alert('error');
				}
			}); */
			$("form#offer").submit();
			alert('예약 신청 완료!(마이페이지에서 확인가능)')

		});
	});
</script>
<head>
<!-- Site Title-->
<title>SIST RENTCAR</title>
<!--     <meta name="format-detection" content="telephone=no"> -->
<meta name="viewport"
	content="width=device-width, height=device-height, initial-scale=1.0">
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
<!-- Stylesheets -->
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
<link rel="stylesheet" href="/orm/SIST/css/bootstrap.css">
<link rel="stylesheet" href="/orm/SIST/css/style.css">
<link rel="stylesheet" href="/orm/SIST/css/fonts.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">
<title>SIST RENTCAR</title>
<style>
div.reserveform {
	position: relative;
	left: -1200px;
}

table.rentlistset {
	position: relative;
	left: 700px;
	top: -600px;
}
</style>
</head>
<body>
	<!------------------ .page=전체 영역 ------------------->
	<div class="page" id="page">
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
								<a class="brand-name" href="/orm/SIST/index.jsp"><img
									class="logo-default" src="/orm/SIST/images/logo.png" alt=""
									width="208" height="46" /><img class="logo-inverse"
									src="/orm/SIST/images/logo-inverse-208x46.png" alt=""
									width="208" height="46" /></a>
							</div>
						</div>
						<!-- 웹 var. 메뉴바 -->
						<div class="rd-navbar-aside-center">
							<div class="rd-navbar-nav-wrap">
								<ul class="rd-navbar-nav">
									<li class="active"><a href="#">HOME</a></li>
									<li><a href="#reserve">예약하기</a></li>
									<li><a href="#community">커뮤니티</a></li>
									<li><a href="#review">이용후기</a></li>
								</ul>
							</div>
						</div>
						<div class="rd-navbar-aside-right">


							<!-- 
              	<a class="button button-sm button-secondary button-nina" href="sub/login.jsp">Login</a>
              	<a class="button button-sm button-secondary button-nina" href="sub/.jsp">Join</a>
              </div>
            </div>
          </nav> -->
							<%-- <%//5.28 이혜진 추가
					if (session.getAttribute("id") == null) {
				%>
				<a class="button button-sm button-secondary button-nina"
					href="sub/login.jsp">Login</a>
				<a class="button button-sm button-secondary button-nina" href="sub/joinRentcar.jsp">Join</a>
				<%
					} else {
						String userid = (String) session.getAttribute("id");
						
				%>
				<b><%=userid%>님 환영합니다</b>
				<a class="button button-sm button-secondary button-nina" href="sub/logoutPro.jsp">Logout</a>
				<a class="button button-sm button-secondary button-nina" name="mypage" id="mypage" >MyPage</a>
				<%
					}
				%> --%>


						</div>
					</div>
				</nav>

			</div>
		</header>
		<!---------------- 예약 FORM -------------->
		<div class="reserveform">
			<div
				class="row row-fix justify-content-sm-center justify-content-lg-end">
				<div class="col-lg-6 col-xxl-5">
					<div
						class="form-request form-request-modern bg-gray-lighter novi-background">
						<!-- <h4>SIST RENT CAR</h4> -->
						<form action="/orm/carseach.do" class="rd-mailform form-fix"
							id="reserve" name="reserve" method="post">
							<div class="row row-20 row-fix">
								<div class="col-sm-12 col-lg-6">
									<label class="form-label-outside">대여일시</label>
									<div class="form-wrap form-wrap-validation">
										<!-- Select -->
										<input class="form-input" id="dateForm" name="date1"
											type="text" data-time-picker="date" value="${param.date1}">
										<label class="form-label" for="dateForm">날짜를 선택하세요.</label>
									</div>
								</div>
								<div class="col-sm-12 col-lg-6">
									<label class="form-label-outside">반납일시</label>
									<div class="form-wrap form-wrap-validation">
										<!-- Select -->
										<input class="form-input" id="dateForm" name="date2"
											type="text" data-time-picker="date" value="${param.date2}">
										<label class="form-label" for="dateForm">날짜를 선택하세요.</label>
									</div>
								</div>
								<div class="col-sm-12">
									<label class="form-label-outside">대여지점</label>
									<div class="form-wrap form-wrap-inline">
										<select class="form-input select-filter"
											data-placeholder="All"
											data-minimum-results-for-search="Infinity" name="place">
											<option value="모든지점"
												<c:if test="${param.place == '모든지점'}">selected</c:if>>모든지점</option>
											<option value="강남지점"
												<c:if test="${param.place == '강남지점'}">selected</c:if>>강남지점</option>
											<option value="잠실지점"
												<c:if test="${param.place == '잠실지점'}">selected</c:if>>잠실지점</option>
											<option value="구로지점"
												<c:if test="${param.place == '구로지점'}">selected</c:if>>구로지점</option>
										</select>
									</div>
								</div>
								<div class="col-sm-12">
									<label class="form-label-outside">차량유형</label>
									<div class="form-wrap form-wrap-inline">
										<select class="form-input select-filter"
											data-placeholder="All"
											data-minimum-results-for-search="Infinity" name="car">
											<option value="모든차종"
												<c:if test="${param.car == '모든차종'}">selected</c:if>>모든차종</option>
											<option value="준중형"
												<c:if test="${param.car == '준중형'}">selected</c:if>>준중형</option>
											<option value="중형"
												<c:if test="${param.car == '중형'}">selected</c:if>>중형</option>
											<option value="대형"
												<c:if test="${param.car == '대형'}">selected</c:if>>대형</option>
											<option value="승합"
												<c:if test="${param.car == '승합'}">selected</c:if>>승합</option>
										</select>
									</div>
								</div>

								<div class="col-sm-12">
									<label class="form-label-outside">탑승인원</label>
									<div class="form-wrap form-wrap-modern">
										<input class="form-input input-append"
											id="form-element-stepper" type="number" min="0" max="300"
											value="${param.people}" name="people">
									</div>
								</div>
							</div>
							<div class="form-wrap form-button">
								<button class="button button-block button-secondary"
									type="button" id="btnsearch">검색</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<table class="rentlistset" border="1">

			<c:forEach var="r" items="${carList}">
				<tr>
					<form action="/orm/statemod.do" name="offer" method="post">
						<td><img src="/orm/SIST/images/${r.rcimg}" width="200"
							height="200" /></td>
						<td>${r.rcmodel}</td>
						<td>${r.sgmtname}</td>
						<td>${r.rcprice}</td>
						<td>${r.ofcname }</td>
						<td>${r.fuelname }</td>
						<c:choose>
							<c:when test="${r.naviname eq 'NONAVIGATION'}">
								<td>네비게이션 X</td>
							</c:when>
							<c:otherwise>
								<td>네비게이션 O</td>
							</c:otherwise>
						</c:choose>
						<input type="hidden" value="${r.rcno}" name="no">

						<td><button id="btnrsv">예약</button></td>
					</form>
				</tr>
			</c:forEach>

		</table>

		<!-------------------------- Footer ---------------------->
		<footer
			class="section page-footer page-footer-minimal novi-background bg-cover text-center bg-gray-darker">
			<div class="container container-wide">
				<div
					class="row row-fix justify-content-sm-center align-items-md-center row-30">
					<div class="col-md-10 col-lg-7 col-xl-4 text-xl-left">
						<a href="index.html"><img class="inverse-logo"
							src="images/logo-inverse-208x46.png" alt="" width="208"
							height="46" /></a>
					</div>
					<div class="col-md-10 col-lg-7 col-xl-4">
						<p class="right">
							가시안이며 비상업적 취업지원 포트폴리오 용도로만 사용됩니다.<br />오른쪽 이니셜 클릭시 개별 email로
							연결됩니다.
						</p>
					</div>
					<div class="col-md-10 col-lg-7 col-xl-4 text-xl-right">
						<ul class="group-xs group-middle">
							<li><a
								class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi"
								href="#">CHJ</a></li>
							<li><a
								class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi"
								href="#">PIC</a></li>
							<li><a
								class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi"
								href="#">YMM</a></li>
							<li><a
								class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi"
								href="#">CSH</a></li>
							<li><a
								class="icon novi-icon icon-md-middle icon-circle icon-secondary-5-filled mdi"
								href="#">LHJ</a></li>
						</ul>
					</div>


				</div>
			</div>
		</footer>
	</div>
	<!-- Global Mailform Output-->
	<div class="snackbars" id="form-output-global"></div>




	<script src="/orm/SIST/js/core.min.js"></script>
	<script src="/orm/SIST/js/script.js"></script>
</body>


</html>
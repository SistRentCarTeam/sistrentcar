<%@page import="java.util.Arrays"%>
<%@page import="java.io.Console"%>
<%@page import="model.RentListBean"%>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">

$(function(){
	 

	 
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

<style type="text/css">
 
 table#memberInfo{
 padding-left: 500px;
 
 }
 
 #reserve0{
 font-size: 30px;
 align-items: center;
 
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
								<a class="brand-name" href="../index.jsp"><img
									class="logo-default" src="../../images/logo.png" alt="" width="208"
									height="46" /><img class="logo-inverse"
									src="../images/logo-inverse-208x46.png" alt="" width="208"
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
									<li><a href="myPage.jsp">내정보</a></li>
									<li class="active"><a href="myPage_Reserve.jsp" >예약확인</a></li>
													<li><a href="myQnA.jsp" >문의내역</a></li>
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
				</nav><!----- 메뉴바 --------->
			</div>
			
			<%
			
			String id = String.valueOf(session.getAttribute("id"));
			String no = String.valueOf(session.getAttribute("no")); 

			session.getAttribute("no");

			MemberBean mem= MemberDao.fineNo(id);

				RentListBean rentlist = new RentListBean();
			 
			  
			 
			  
			  List<RentListBean> list = MemberDao.myPage_reserve(Integer.parseInt(no));
				
			  	System.out.print(" / no: "+no);
				System.out.print(" / list: "+list);  
				
			 
			  if (list.size() == 0) {
          	 out.print("<h3 style='text-align:center; margin-top:200px;'>예약내역이 없습니다</h3>");
			}else{   
			%>
			
			<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="80"/>
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="200" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="130" />
								<col width="230" />
							</colgroup>
							<tbody>
								
							</tbody>
						</table>
					 
					<form action="#" name="delForm" method="post" style="margin-left: 400px; margin-top: 60px;">
					<table class="bbsList">
						<colgroup>
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="130" />
							<col width="100" />
							<col width="130" />
							<col width="130" />
							


						</colgroup>
						<thead >
							<tr>
 
								<th scope="col" class="fir">RENTNO</th>
								<th scope="col" class="fir">RENTDATE</th>
								<th scope="col" class="fir">RETURNDATE</th>
								<th scope="col" class="fir">CARNO</th>
								<th scope="col" class="fir">MEMBERNO</th>
								<th scope="col" class="fir">PSGNUM</th>
								<th scope="col" class="fir">OFCNO</th>
								<th scope="col" class="fir">RPRICE</th>

							</tr>
						</thead>			 
						 <tbody>
							<%
						
							
								 
								
							for(RentListBean bean : list){
							%>
							<tr>
							<td><%=bean.getCarno()%></td>
							<td><%=bean.getRentdate()%></td>
							<td><%=bean.getReturndate()%></td>
							<td><%=bean.getCarno()%></td>
							<td><%=bean.getMemberno()%></td>
							<td><%=bean.getPsgnum()%></td>
							<td><%=bean.getOfcno()%></td>
							<td><%=bean.getRprice()%></td>
							
							</tr>
							
							<%
							}
								}
							%>
								 
								
							 
						</tbody> 
					</table>
					</form>
			
			
	<!-- Global Mailform Output-->
	<div class="snackbars" id="form-output-global"></div>
	<!-- Javascript-->
	<script src="../js/core.min.js"></script>
	<script src="../js/script.js"></script>
	<!-- coded by barber-->
</body>
</html>
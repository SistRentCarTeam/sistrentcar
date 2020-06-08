<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.RentCarDAO"%>
<%@page import="model.NoticeBean"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html class="wide wow-animation" lang="en"> 
  <head>
    <!-- Site Title-->
    <title>SIST RENTCAR</title>
<!--     <meta name="format-detection" content="telephone=no"> -->
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
    <meta charset="utf-8">
 <!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/fonts.css">
	<link href="https://fonts.googleapis.c
	om/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	
	
	
<!-------------200521 페이징처리 css ----------------->
<style type="text/css">

	.pagination {
  position: relative;
  margin-top: 25px;
  padding-top: 10px;
  padding-bottom: 10px;
  text-align: center;
}
.pagination ul {
  display: inline-block;
  *display: inline;
  zoom: 1;
}
.pagination ul li {
  float: left;
  width: 50px;
  height: 50px;
  margin-right: 5px;
  margin-left: 5px;
  line-height: 50px;
  text-align: center;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.pagination ul li.selected,
.pagination ul li:hover {
  border-radius: 50%;
  background-color: #fff;
  color: #192028;
  -webkit-box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
  box-shadow: 10px 10px 10px rgba(0, 0, 0, 0.1);
  font-weight: bold;
  color: #000;
  opacity: 1;
  filter: alpha(opacity=100);
}
.pagination ul a {
  display: block;
  height: 100%;
  color: #000;
  font-weight: bold;
}
.pagination ul .first a,
.pagination ul .prev a,
.pagination ul .next a,
.pagination ul .last a {
  position: relative;
  color: transparent;
  text-shadow: none;
  text-indent: -9999px;
}
.pagination ul .first {
  position: relative;
}
.pagination ul .first:before {
  content: '';
  background-image: url("/static/images/img-sprite.png");
  background-position: 0 0;
  background-repeat: no-repeat;
  display: inline-block;
  *display: inline;
  zoom: 1;
  vertical-align: middle;
}
.pagination ul .first:before {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -6.5px 0 0 -6px;
  width: 12px;
  height: 13px;
}
.pagination ul .first:before {
  background-position: -270px -30px;
}
.pagination ul .prev {
  position: relative;
}
.pagination ul .prev:before {
  content: '';
  background-image: url("/static/images/img-sprite.png");
  background-position: 0 0;
  background-repeat: no-repeat;
  display: inline-block;
  *display: inline;
  zoom: 1;
  vertical-align: middle;
}
.pagination ul .prev:before {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -6.5px 0 0 -4px;
  width: 8px;
  height: 13px;
}
.pagination ul .prev:before {
  background-position: -50px -30px;
}
.pagination ul .next {
  position: relative;
}
.pagination ul .next:before {
  content: '';
  background-image: url("/static/images/img-sprite.png");
  background-position: 0 0;
  background-repeat: no-repeat;
  display: inline-block;
  *display: inline;
  zoom: 1;
  vertical-align: middle;
}
.pagination ul .next:before {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -6.5px 0 0 -4px;
  width: 8px;
  height: 13px;
}
.pagination ul .next:before {
  background-position: -60px -30px;
}
.pagination ul .last {
  position: relative;
}
.pagination ul .last:before {
  content: '';
  background-image: url("/static/images/img-sprite.png");
  background-position: 0 0;
  background-repeat: no-repeat;
  display: inline-block;
  *display: inline;
  zoom: 1;
  vertical-align: middle;
}
.pagination ul .last:before {
  position: absolute;
  top: 50%;
  left: 50%;
  margin: -6.5px 0 0 -6px;
  width: 12px;
  height: 13px;
}
.pagination ul .last:before {
  background-position: -290px -30px;
}
	
</style>
	
<script>
function searchData(){
	var obj=document.notice;
	if(!obj.searchValue.value){
		alert('검색어를 입력해주세요');
		obj.data.value='';
		return false;
	}
	obj.submit();
}
</script>
  </head>
  <body>
<%
	request.setCharacterEncoding("UTF-8");
	List<NoticeBean>list=null;
	HashMap<String,Object>map=new HashMap<String,Object>();
	String searchValue=request.getParameter("searchValue");
	map.put("searchValue", searchValue);
	int pageSize=2;
    int Row=0;
    int totalPage=1;
    int currentPage=1;
    Row=RentCarDAO.getRow(map);
    totalPage=(totalPage=Row%pageSize==0?(Row/pageSize):(Row/pageSize)+1)==0?1:totalPage;
    try{
    	currentPage=Integer.parseInt(request.getParameter("page"));
    }catch(Exception e){
    	//e.printStackTrace();
    }
    int start=1+(currentPage-1)*pageSize;
    int end=pageSize+(currentPage-1)*pageSize;
    int currentBlock=currentPage%pageSize==0?(currentPage/pageSize):(currentPage/pageSize)+1;
    int startPage=1+(currentBlock-1)*pageSize;
    int endPage=(pageSize+(currentBlock-1)*pageSize);
    endPage=(endPage)>=totalPage?totalPage:endPage;
    
    map.put("start",start);
    map.put("end",end);	 
	list=RentCarDAO.selectnotice(map);
	
	
%>
  <form name="notice" method="POST" action="">
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
                <div class="rd-navbar-brand"><a class="brand-name" href="../index.jsp"><img class="logo-default" src="../images/logo.png" alt="" width="208" height="46"/><img class="logo-inverse" src="../images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
              </div>
              <!-- 웹 var. 메뉴바 -->
              <div class="rd-navbar-aside-center">
                <div class="rd-navbar-nav-wrap">
                  <ul class="rd-navbar-nav">
                    <li><a href="../index.jsp">HOME</a>
                    </li>
                    <li><a href="../index.jsp">예약하기</a>
                    </li>
                    <li><a href="../index.jsp" class="active">커뮤니티</a>
                    </li>
                    <li><a href="review.jsp">이용후기</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="rd-navbar-aside-right">
              	<a class="button button-sm button-secondary button-nina" href="login.jsp">Login</a>
              	<a class="button button-sm button-secondary button-nina" href="join.jsp">Join</a>
              </div>
            </div>
          </nav>
        </div>
      </header>

	<!-----------------200521 추가내용 ------------------->
	  <section>
	  
	  
	  <input type="hidden" id="page" name="page" value="1" />
<input type="hidden" id="noticeSn" name="noticeSn" value="" />

	<div class="content-wrap">
		<div id="content">
			<div class="content left">
            	<div class="page-header">
                    <h3 class="h3">공지사항</h3>
                    <div class="form-search icon">
                    
            			<input type="text" id="searchValue" placeholder="검색어 입력" name="searchValue" value="">
            			<a class="button button-sm button-secondary button-nina" href="javascript:searchData()">검색</a>
            			<!-- <button type="button" onclick="fncPage(1);">검색</button> -->
                    <a class="button button-sm button-secondary button-nina" href="#">글쓰기</a>
                    <a class="button button-sm button-secondary button-nina" href="community.jsp">새로고침</a>
            			
            			
                    </div>
						
                </div>






				<table class="panel table table-stripe">
                    <thead>
                        <tr>
                            <th scope="col">번호</th>
                            <th scope="col">제목</th>
                            <th scope="col">작성자</th>
                            <th scope="col">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                    	for(NoticeBean notice: list){
                    %>
                    	<tr>
                            <th scope="col" id="no"><%=notice.getNtcno() %></th>
                           <th scope="col" id="ntitle"> <a href=""><%=notice.getNtitle() %></a></th>
                            <th scope="col" id="writer">운영자</th>
                            <th scope="col" id="nregdate"><%=notice.getNregdate() %></th>
                        </tr>
  					<%
                    	}
  					%>
                    </tbody>
  </table>
  
  	  <div class="pagination">
		 <ul>
		 		<li><a href="community.jsp?page=1">처음</a></li>
		 	<%
			   if(currentBlock>1){
			%>
				<li><a href="community.jsp?page=<%=startPage-1%>">이전</a></li>
			<%
				}else{
			%>
				<li><a href="#">이전</a></li>
			<%
				}
			%>
			<%
				for(int i=startPage;i<=endPage;i++){
					if(i==currentPage){
			%>
						<li class="selected"><%=i %></li>
			<%		   
				}else{
			%>
						<li><a href="community.jsp?page=<%=i%>"><%=i %></a></li> 
			<%
					}
				}
			%>
			<%
				if(totalPage>endPage){
			%>
				<li><a href="community.jsp?page=<%=endPage+1%>">다음</a></li>
			<%
				}else{
			%>
				<li><a href="#">다음</a></li>
			<%
				}
			%>
				<li><a href="community.jsp?page=<%=totalPage%>">끝</a></li>
		</ui>	
     </div><!--//pagination-->
      	
		</div><!--//left-->
		</div><!--//content-->
    </div><!--//content-wrap-->
</div><!--//container-->
	  
	  
	  
	  
	  
	  
	  
	  
	  </section>

      <!-------------------------- Footer ---------------------->
      <footer class="section page-footer page-footer-minimal novi-background bg-cover text-center bg-gray-darker">
        <div class="container container-wide">
          <div class="row row-fix justify-content-sm-center align-items-md-center row-30">
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-left"><a href="index.html"><img class="inverse-logo" src="../images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
            <div class="col-md-10 col-lg-7 col-xl-4">
              <p class="right">가시안이며 비상업적 취업지원 포트폴리오 용도로만 사용됩니다.<br/></p>
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
     </form>
  </body>
</html>
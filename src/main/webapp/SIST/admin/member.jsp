<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="dao.MemberDao"%>
<%@page import="model.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html class="wide wow-animation" lang="en">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 


<script type="text/javascript">

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
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
	<style>
	.smallBtn{
		margin: 0 auto;
	    float: right;
	    padding: 3px 0px;
	    min-width: 100px;
	    margin-right: 5px;
	}
	</style>
	
	<script type="text/javascript">
	
	$(function(){
   //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	        //클릭되었으면
	    	 if ($("#checkall").is(':checked')) {
	                $("input[type=checkbox]").prop("checked", true);
	            } else {
	                $("input[type=checkbox]").prop("checked", false);
	            }
	        
	        

	 	    $("#checkall").click(function(){
	 	    	 var chk = $("#checkall").prop("checked");
	 	    	 if(chk) {
	 	    	  $("input[type=checkbox]").prop("checked", true);
	 	    	 } else {
	 	    	  $("input[type=checkbox]").prop("checked", false);
	 	    	 }
	 	    	});
	 	
	 	    $("input[type=checkbox]").click(function(){
	 	    	  $("#checkall").prop("checked", false);
	 	    	 });
	        
	    });
	 
	    $('input[type=checkbox]:input[value="no"]').prop("checked", true);  
	    
	 });
	    
			  function onMemberDelete(no){

				  
				  var memberChk = document.getElementsByName("deleteMember");
				  var chked = false;
				  var indexid = false;
				  for(i=0; i < memberChk.length; i++){
				   if(memberChk[i].checked){
				    if(indexid){
				      no = no + '-';
				    }
				    no = no + memberChk[i].value;
				    indexid = true;
				   }
				  }
				  if(!indexid){
				   alert("삭제할 사용자를 체크해 주세요");
				   return;
				  }
				  document.userForm.delUserid.value = no;       // 체크된 사용자 아이디를 '-'로 묶은 userid 를      document.userForm.delUserid 의 value로 저장
				  
				  var agree=confirm("삭제 하시겠습니까?");
				     if (agree){
				   document.userForm.execute.value = "userDel";
				     document.userForm.submit();
				     }
				  }﻿
	    
	    
    
 
 
	 function onMemberDelete(no) {
		 alert('onMemberDelete 삭제? = ' + no) 
	}
				  
				 
	</script>
	
	
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
                    <li><a href="office.jsp">지점관리</a>
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
     
     <!------------------------------ 내용입력 ------------------------>
    <section class="section section-lg bg-gray-lighter novi-background bg-cover text-center" id="reviews">
    <form name="userForm" method="post">
		<div class="container">
		  <div>
		   <h2>회원 목록</h2>
			   
		  </div>
		
		  
		    <%
		    
		    List<MemberBean> list = null;
		    HashMap<String, Object> map = new HashMap<String, Object>();
			list = MemberDao.selectMember(map);
		    
			

			 
		    %>
		 <!--  <p>The .table-hover class enables a hover state on table rows:</p>    -->         
		  <table class="table table-hover">
		    <thead>
		      <tr>
		        <th><input type="checkbox" id="checkall"/></th>
		        <th>번호</th>
		        <th>아이디</th>
		        <th>성명</th>
		        <th>주소</th>
		        <th>전화번호</th>
		        <th>메일</th>
		        <th>생년월일</th>
		      </tr>
		    </thead>
 
               
		    <tbody>
		       <%
		       
		       
		       
		       for (MemberBean b : list) {	  
		    	  
		       %>
		    	<tr>
			        <td><input type="checkbox" id="check" value="<%b.getMemno();%>"/></td>
			        <td><%=b.getMemno() %></td>
			        <td><%=b.getMemid() %></td>
			        <td><%=b.getMname() %></td>
			        <td><%=b.getMadress() %></td>
			        <td><%=b.getMemtel() %></td>
			        <td><%=b.getMemail() %></td>
			        <td><%=b.getMbirth()%></td>
			        
			         
 
			        <td>
			        	<a class="button button-sm button-secondary button-nina smallBtn" href="#">선택수정</a>
			  			<a class="button button-sm button-secondary button-nina smallBtn" href="#" name="deleteMember" id="deleteMember" onclick="onMemberDelete(<%=b.getMemno() %>)">선택삭제</a>
			        </td>
		      	</tr>
 <%
		       }
 %>
		    </tbody>
		  </table>
		</div>
	
		</form>
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
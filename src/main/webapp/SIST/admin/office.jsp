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
<!-- 
$(function(){
	
	  $("input#all").click(function(event){		  
			 $("input[name='nt']").each(function(){			 
				 $(this).prop("checked",$("input#all").is(":checked"));			 
			 });
		  });	
		  $("input[name='nt']").click(function(){
			  var state=false;
			  $("input[name='nt']").each(function(){	//하나씩 체크 확인	 
				  if(!$(this).prop("checked")){			//check되지 않으면 true
					  state=true;
				  }
			  });//each
			  $("input#all").prop("checked",(!state));   
		  });

		  $("a#ckDel").click(function(){
			   var st=0;
			 $("input[name='nt']").each(function(){
				if($(this).is(":checked")){
					st++;
				}//if 
			 });//each
			 if(st<=0){
				 alert('CheckBoxCheck');
				 return false;
			 }
			 $("form[name='delForm']").submit();
		  });

		  $("a[name='del']").click(function(){		//삭제버튼 클릭하면
			  if($(this).text()=='DEL'){			//'DEL'을 누르면
				alert('DEL버튼');
			   location.reload();			//새로고침 하는 명령어
			  }  	  
			 $(this).html("DEL");			//삭제버튼 text를 'DEL'로 바꿈
			 var delId=this.id;
			 $("input[type=checkbox]").each(function(){
				 if(delId==this.id){			 
				  $(this).prop("checked",true);
				  $("a[name='del']").each(function(){
					 if(this.id!=del){
						$(this).html("삭제");
					 } 
				  });
				 }else{
					 $(this).prop("checked",false);
				 }			
			 });
		  });
});

</script>
 -->


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
	.list{
	margin-left: 10px;
    margin-bottom: 46px;
    float: right;
	
	}
	</style>
	
  </head>
  
  <body>
  <%
	String no= request.getParameter("nono");
  
  %>
  <%-- <%=no %> --%>
   <form action="office.jsp" name="delForm" method="post">    
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
                  	 <li><a href="member.jsp">회원관리</a>
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
     
     
<%--      <%
     request.setCharacterEncoding("UTF-8");
     List<OfficeBean> list =null;
     list=RentCarDAO.selectOffice();
     %> --%>
     <!------------------------------ 내용입력 ------------------------>
    <section class="section section-lg bg-gray-lighter novi-background bg-cover text-center" id="reviews">
		<div class="container">
		  <div>
		   <h2>지점 목록</h2>
			   <a class="button button-sm button-secondary button-nina list" href="#">등록</a>
			   <a class="button button-sm button-secondary button-nina list" href="#">수정</a>
			   <!-- <a class="button button-sm button-secondary button-nina list" id="ckDel" >삭제</a> -->
			   <a class="button button-sm button-secondary button-nina list" name="del" id="${i.no}">삭제</a>
		  </div>
		
		  
		 <!--  <p>The .table-hover class enables a hover state on table rows:</p>    -->         
		  <table class="table table-hover">
		    <thead>
		      <tr>
		        <th>지점번호</th>
		        <th>지점명</th>
		        <th>지점장</th>
		        <th>지점장번호</th>
		        <th>전화번호</th>
		        <th>주소</th>
		      </tr>
		    </thead>
		    
<%-- 		    <tbody>
		      <%for (OfficeBean b: list){ %>
		    	<tr lang="${b.no}">
		    		<td>
		    		<input type="checkbox" id="<%=b.getOfcno() %>"  name="nt" value="<%=b.getOfcno() %>" />
		    		${cnt.count}<a id="nono" name="nono"><%=b.getOfcno() %></a>
		    		</td>
			        <td><%=b.getOfcname() %></td>
			        <td><%=b.getMgrname() %></td>
			        <td><%=b.getMemno() %></td>
			        <td><%=b.getOfctel() %></td>
			        <td><%=b.getOfcaddr() %></td>
		      	</tr>
		      <%
		      }
		      %>
		    </tbody> --%>
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
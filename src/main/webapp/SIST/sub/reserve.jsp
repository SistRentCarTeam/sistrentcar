<%@page import="sist.com.dto.SelectCarListBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="sist.com.dto.RentCarBean"%>
<%@page import="java.util.List"%>
<%@page import="dao.RentCarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html class="wide wow-animation" lang="en"> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button#btnsearch").click(function(){
		//alert('test');
		$("form#reserve").submit();
	});	
	$("button#btnrsv").click(function(){
		<%-- <%RentCarDAO. %> --%>
		$("form#offer").submit();
		
	});
});
</script>
  <head>
    <!-- Site Title-->
    <title>SIST RENTCAR</title>
<!--     <meta name="format-detection" content="telephone=no"> -->
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
<!--     <meta http-equiv="X-UA-Compatible" content="IE=edge"> -->
 <!-- Stylesheets -->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/fonts.css">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>SIST RENTCAR</title>
</head>
<body>
<%-- <% 
	request.setCharacterEncoding("UTF-8");
	List<SelectCarListBean>list=null;
	String place=request.getParameter("place");
	String car=request.getParameter("car");
	HashMap<String,Object>map=new HashMap<String,Object>();
	map.put("place", place);
	map.put("car", car);
	list=RentCarDAO.seachRentCar(map);
	request.setAttribute("list", list);
%> --%>
 
           <!---------------- 예약 FORM -------------->
          <div class="container container-bigger form-request-wrap form-request-wrap-modern">
            <div class="row row-fix justify-content-sm-center justify-content-lg-end">
              <div class="col-lg-6 col-xxl-5">
                <div class="form-request form-request-modern bg-gray-lighter novi-background">
                  <!-- <h4>SIST RENT CAR</h4> --> 
                  <form action="reserve.jsp" class="rd-mailform form-fix" id="reserve" name="reserve" method="post">
                    <div class="row row-20 row-fix">
                      <div class="col-sm-12 col-lg-6">
                        <label class="form-label-outside">대여일시</label>
                        <div class="form-wrap form-wrap-validation">
                          <!-- Select -->
                          <input class="form-input" id="dateForm" name="date1" type="text" data-time-picker="date" value=" ${param.date1}">
                          <label class="form-label" for="dateForm">날짜를 선택하세요.</label>
                        </div>
                      </div>
                      <div class="col-sm-12 col-lg-6">
                        <label class="form-label-outside">반납일시</label>
                        <div class="form-wrap form-wrap-validation">
                          <!-- Select -->
                          <input class="form-input" id="dateForm" name="date2" type="text" data-time-picker="date" value=" ${param.date2}">
                          <label class="form-label" for="dateForm">날짜를 선택하세요.</label>
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <label class="form-label-outside">대여지점</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="place" >
							<option value="모든지점"<c:if test="${param.place == '모든지점'}">selected</c:if>>모든지점</option>
                            <option value="강남지점"<c:if test="${param.place == '강남지점'}">selected</c:if>>강남지점</option>
                            <option value="잠실지점"<c:if test="${param.place == '잠실지점'}">selected</c:if>>잠실지점</option>
                            <option value="구로지점"<c:if test="${param.place == '구로지점'}">selected</c:if>>구로지점</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <label class="form-label-outside">차량유형</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="car">
                            <option value="모든차종"<c:if test="${param.car == '모든차종'}">selected</c:if>>모든차종</option>
                            <option value="준중형"<c:if test="${param.car == '준중형'}">selected</c:if>>준중형</option>
                            <option value="중형"<c:if test="${param.car == '중형'}">selected</c:if>>중형</option>
                            <option value="대형"<c:if test="${param.car == '대형'}">selected</c:if>>대형</option>
                            <option value="승합"<c:if test="${param.car == '승합'}">selected</c:if>>승합</option>
                          </select>
                        </div>
                      </div>                      

                      <div class="col-sm-12">
                        <label class="form-label-outside">탑승인원</label>
                        <div class="form-wrap form-wrap-modern">
                          <input class="form-input input-append" id="form-element-stepper" type="number" min="0" max="300" value="${param.people }" name="people">
                        </div>
                      </div>
                    </div>
                    <div class="form-wrap form-button">
                      <button class="button button-block button-secondary" type="button" id="btnsearch">검색</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <table class="rentlist" border="1">
 
			<c:forEach var="r" items="${carList}" >
			<tr>
			<form action="offer.jsp" name="offer" method="post">
				<td><img src="../images/${r.rcimg}" width="200" height="200"/></td>
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
				<input type="hidden" value="${r.rcno}" name="rcno">
				
				<td><button id="btnrsv" >예약</button></td></form> 
			</tr>	
			</c:forEach> 
			
        </table>
        
    <script src="../js/core.min.js"></script>
    <script src="../js/script.js"></script>
</body>
</html>
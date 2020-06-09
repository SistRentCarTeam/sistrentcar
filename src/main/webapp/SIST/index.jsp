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
		//5.28이전
		if($("input[name='date1']").val().length>0 && $("input[name='date2']").val().length>0){
		$("form").submit();			
		}else{
			alert('날짜를 선택해주세요.');
		}
	});
	
	//5.28 이혜진 추가
	/* $(function(){
		 
		$("button#btnsearch2").click(function(){
			alert('로그인이 필요합니다')
		})
		
		$("button#btnsearch").click(function(){
			 
			document.reserve.submit(); 	
		});	
		
		$("a#mypage").click(function(){
			location.href="sub/myPage.jsp";
	 	});
	 
	}); */
	
});
		
</script>

  <head>
    <!-- Site Title-->
    <title>SIST RENTCAR</title>
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
    <meta charset="utf-8">
 	<!---------------------- Stylesheets ------------------->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Oswald:200,400%7CLato:300,400,300italic,700%7CMontserrat:900">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/fonts.css">
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
                <div class="rd-navbar-brand"><a class="brand-name" href="index.jsp"><img class="logo-default" src="images/logo.png" alt="" width="208" height="46"/><img class="logo-inverse" src="images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
              </div>
              <!-- 웹 var. 메뉴바 -->
              <div class="rd-navbar-aside-center">
                <div class="rd-navbar-nav-wrap">
                  <ul class="rd-navbar-nav">
                    <li class="active"><a href="#">HOME</a>
                    </li>
                    <li><a href="#reserve">예약하기</a>
                    </li>
                    <li><a href="#community">커뮤니티</a>
                    </li>
                    <li><a href="#review">이용후기</a>
                    </li>
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
      <!------------------ 슬라이드 - 내용수정 --------------------->
      <section class="section">
        <div class="swiper-form-wrap">
          <div class="swiper-container swiper-slider swiper-slider_height-1 swiper-align-left swiper-align-left-custom context-dark bg-gray-darker" data-loop="false" data-autoplay="5500" data-simulate-touch="false" data-slide-effect="fade">
            <div class="swiper-wrapper">
              <div class="swiper-slide" data-slide-bg="images/jeep.jpg">
                <div class="swiper-slide-caption">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>Hundreds of Amazing Destinations</h3>
                        <div class="divider divider-decorate"></div>
                        <p class="text-spacing-sm">We offer a variety of destinations to travel to, ranging from exotic to some extreme ones. They include very popular countries and cities like Paris, Rio de Janeiro, Cairo and a lot of others.</p><a class="button button-default-outline button-nina button-sm" href="#">learn more</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/swiper-slide-2.jpg">
                <div class="swiper-slide-caption">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>The Trip of Your Dream</h3>
                        <div class="divider divider-decorate"></div>
                        <p class="text-spacing-sm">Our travel agency is ready to offer you an exciting vacation that is designed to fit your own needs and wishes. Whether it’s an exotic cruise or a trip to your favorite resort, you will surely have the best experience.</p><a class="button button-default-outline button-nina button-sm" href="#">learn more</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="swiper-slide" data-slide-bg="images/swiper-slide-3.jpg">
                <div class="swiper-slide-caption">
                  <div class="container container-bigger swiper-main-section">
                    <div class="row row-fix justify-content-sm-center justify-content-md-start">
                      <div class="col-md-6 col-lg-5 col-xl-4 col-xxl-5">
                        <h3>unique Travel Insights</h3>
                        <div class="divider divider-decorate"></div>
                        <p class="text-spacing-sm">Our team is ready to provide you with unique weekly travel insights that include photos, videos, and articles about untravelled tourist paths. We know everything about the places you’ve never been to!</p><a class="button button-default-outline button-nina button-sm" href="#">learn more</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- 슬라이드 독바 -->
            <div class="swiper-pagination-wrap">
              <div class="container container-bigger">
                <div class="row">
                  <div class="col-sm-12">
                    <div class="swiper-pagination"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!---------------- 예약 FORM -------------->
          <div class="container container-bigger form-request-wrap form-request-wrap-modern">
            <div class="row row-fix justify-content-sm-center justify-content-lg-end">
              <div class="col-lg-6 col-xxl-5">
                <div class="form-request form-request-modern bg-gray-lighter novi-background">
                  <!-- <h4>SIST RENT CAR</h4> --> 
                  <form action="/orm/carseach.do" class="rd-mailform form-fix" id="reserve" name="reserve" method="post">
                  <!-- 수정<form class="rd-mailform form-fix" id="bookingBtn"> -->
                    <div class="row row-20 row-fix">
                      <div class="col-sm-12 col-lg-6">
                        <label class="form-label-outside">대여일시</label>
                        <div class="form-wrap form-wrap-validation">
                          <!-- Select -->
                          <input class="form-input" id="dateForm" name="date1" type="text" data-time-picker="date">
                          <label class="form-label" for="dateForm">날짜를 선택하세요.</label>
                        </div>
                      </div>
                      <div class="col-sm-12 col-lg-6">
                        <label class="form-label-outside">반납일시</label>
                        <div class="form-wrap form-wrap-validation">
                          <!-- Select -->
                          <input class="form-input" id="dateForm" name="date2" type="text" data-time-picker="date">
                          <label class="form-label" for="dateForm">날짜를 선택하세요.</label>
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <label class="form-label-outside">대여지점</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="place">
                            <option value="모든지점">모든지점</option>
                            <option value="강남지점">강남지점</option>
                            <option value="잠실지점">잠실지점</option>
                            <option value="구로지점">구로지점</option>
                          </select>
                        </div>
                      </div>
                      <div class="col-sm-12">
                        <label class="form-label-outside">차량유형</label>
                        <div class="form-wrap form-wrap-inline">
                          <select class="form-input select-filter" data-placeholder="All" data-minimum-results-for-search="Infinity" name="car">
                            <option value="모든차종">모든차종</option>
                            <option value="준중형">준중형</option>
                            <option value="중형">중형</option>
                            <option value="대형">대형</option>
                            <option value="승합">승합</option>
                          </select>
                        </div>
                      </div>                      

                      <div class="col-sm-12">
                        <label class="form-label-outside">탑승인원</label>
                        <div class="form-wrap form-wrap-modern">
                          <input class="form-input input-append" id="form-element-stepper" type="number" min="0" max="300" value="2"  name="people">
                        </div>
                      </div>
                    </div>
                    <div class="form-wrap form-button">
                      <!-- <button class="button button-block button-secondary" type="submit" id="btnsearch">검색</button> -->
                      <%-- <%
                    if (session.getAttribute("id") != null) {
                    %> --%>
                       <button class="button button-block button-secondary" type="button" id="btnsearch">검색</button>
                     <%--   <%
                    }else{
                       %>
                        <button class="button button-block button-secondary" type="button" id="btnsearch2">검색</button>
                       <%
                    }
                       %> --%>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
	
      <section class="section section-variant-1 bg-default novi-background bg-cover" id="community"> 
        <div class="container container-wide">
          <div class="row row-fix justify-content-xl-end row-30 text-center text-xl-left">
            <div class="col-xl-8">
              <div class="parallax-text-wrap">
                <h3>커뮤니티</h3><span class="parallax-text">COMMUNITY     </span>
              </div>
              <hr class="divider divider-decorate">
            </div>
          </div>
          <div class="row row-50">
            <div class="col-md-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/landing-private-airlines-01-570x370.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-secondary button-nina" href="sub/community.jsp">learn more</a></div>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/landing-private-airlines-02-570x370.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-secondary button-nina" href="../community.jsp">learn more</a></div>
                </div>
              </article>
            </div>
            <div class="col-md-6 col-xl-4">
              <article class="event-default-wrap">
                <div class="event-default">
                  <figure class="event-default-image"><img src="images/landing-private-airlines-03-570x370.jpg" alt="" width="570" height="370"/>
                  </figure>
                  <div class="event-default-caption"><a class="button button-xs button-secondary button-nina" href="../community.jsp">learn more</a></div>
                </div>
              </article>
            </div>

          </div>
        </div>
      </section>

      <section class="section section-lg text-center bg-gray-lighter novi-background bg-cover" id="review">
        <div class="container container-bigger">
          <h3>이용후기</h3>
          <div class="divider divider-decorate"></div>
         <!--  <a class="button button-sm button-secondary button-nina" href="sub/review.jsp">더보기</a> -->
          <!-- Owl Carousel-->
          <div class="owl-carousel owl-layout-1" data-items="1" data-dots="true" data-nav="true" data-stage-padding="0" data-loop="true" data-margin="30" data-mouse-drag="false" data-autoplay="true">
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-1-210x210.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                	<p>이용후기 내용.이용후기가 안좋은 곳이 너무 많아서 고르고 골라 선택했어요! 공항나오자마자 셔틀버스도 10분정도 기다려서 출발했고, 가는데에도 10분정도 간것 같아요. 도착해서 거의 바로 렌트했고 직원분들 모두 친절하였습니다. 차상태는 긁힌곳이 많았지만 미리 사진 찍어두라는 직원분 말씀에 저도 사진이랑 동영상도 미리 찍어놔서 문제될건 전혀 없었어요! 마지막 반납하는 부분까지도 매우 만족했습니다^^</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">강남지점</p>
                  <p class="quote-boxed-small">전*은 님</p>
                </div>
              </div>
            </article>
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-2-210x210.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                  <p>요즘 코로나19로 인하여 손님이 없어서인지 혼자서 일하고 계셨지만 친절하고 불편함 없게끔 해주셨습니다 전기차 렌트하면 충전비 요구하는데 24시간 빌리면서 완충되어 있으면 충전할일 없을것 같다고 했더니 충전비 감사하게도 안받으시네요</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">송파지점</p>
                  <p class="quote-boxed-small">김*경 님</p>
                </div>
              </div>
            </article>
            <article class="quote-boxed">
              <div class="quote-boxed-aside"><img class="quote-boxed-image" src="images/quote-user-3-210x210.jpg" alt="" width="210" height="210"/>
              </div>
              <div class="quote-boxed-main">
                <div class="quote-boxed-text">
                  <p>원하는 차량 너무 편하게 깨끗하게 이용 잘했어요! 가격도 맘에들고 거기다 가는 곳에 카페가 있어서 아아 한잔 무료! 정말 추가요금 이런거 하나도 없이 완전 즐거운 여행되었어요^^ 다음에 또 이용하겠습니다!</p>
                </div>
                <div class="quote-boxed-meta">
                  <p class="quote-boxed-cite">이용지점</p>
                  <p class="quote-boxed-small">박*정 님</p>
                </div>
              </div>
            </article>
          </div>
          
          <a class="button button-sm button-secondary button-nina" href="sub/review.jsp" style=" margin: 0; padding: 15px 60px; font-weight: bold;">더보기</a>
          
        </div>
      </section>


      <!-------------------------- Footer ---------------------->
      <footer class="section page-footer page-footer-minimal novi-background bg-cover text-center bg-gray-darker">
        <div class="container container-wide">
          <div class="row row-fix justify-content-sm-center align-items-md-center row-30">
            <div class="col-md-10 col-lg-7 col-xl-4 text-xl-left"><a href="index.html"><img class="inverse-logo" src="images/logo-inverse-208x46.png" alt="" width="208" height="46"/></a></div>
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
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <!-- coded by barber-->
  </body>
</html>
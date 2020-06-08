
<%@page import="model.MemberBean"%>
<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script type="text/javascript">
	$(function() {

	});
</script>
</head>
<body>





	<%
		String id = request.getParameter("userId");
		String pw = request.getParameter("userpassword");

        MemberBean bean = MemberDao.findlevel(id);
		
		MemberBean mem = MemberDao.fineNo(id);
/* 	 //System.out.print("mem no = " + mem);
		if (MemberDao.logincheck(id, pw)) {
			session.setAttribute("id", id);
			session.setAttribute("no", mem.getMemno());

			out.print(mem);
			session.setMaxInactiveInterval(1000);
			response.sendRedirect("index.jsp");
		} if(MemberDao.logincheck(id, pw) && Integer.parseInt(bean.getMlevel())==0){
			response.sendRedirect("AdminIndex.jsp");
		}else if (MemberDao.logincheck(id, pw)){
			/* response.sendRedirect("login.jsp"); */
		//	out.println("<script>alert('아이디 비밀번호를 확인해주세요'); location.href='login.jsp';</script>");
		/* } */ 
		  
	 
		 
		 
		 
		 if (MemberDao.logincheck(id, pw) && Integer.parseInt(bean.getMlevel())==0){ //관리자
			 session.setAttribute("id", id);
			 session.setMaxInactiveInterval(10000);
			 response.sendRedirect("../adminIndex.jsp");
			 
			 
		 }else if(MemberDao.logincheck(id, pw) && Integer.parseInt(bean.getMlevel())==1) {//로그인 완료
				session.setAttribute("id", id);
				session.setAttribute("no", mem.getMemno());
				session.setMaxInactiveInterval(10000000);
				response.sendRedirect("../index.jsp");
		 }else{
			 out.println("<script>alert('아이디 비밀번호를 확인해주세요'); location.href='login.jsp';</script>");
		 }
	%>


</body>
</html>
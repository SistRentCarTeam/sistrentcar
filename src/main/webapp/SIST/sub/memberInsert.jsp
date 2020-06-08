<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%
	request.setCharacterEncoding("UTF-8");
%>



<jsp:useBean id="member2" class="model.MemberBean"
	scope="session" />
<jsp:setProperty property="*" name="member2" />
</head>
<body>


	<!-- DAO CALL -->
	<!-- SUCESS PAGE -->
	<%
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("password1");
		String gender = request.getParameter("gender");
		
		String birth = request.getParameter("year");
		String birth2 = request.getParameter("month");
		String birth3 = request.getParameter("day");
		
		String post1 = request.getParameter("post1");
		String post2 = request.getParameter("post2");
		String address1 = request.getParameter("address1");
		String address2 = request.getParameter("address2");
		
		String email = request.getParameter("email1");
		String email2 = request.getParameter("email3");
		
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");

		member2.setMemno(member2.getMemno());
		member2.setMemid(id);
		member2.setMempw(password);
		member2.setMname(name);
		member2.setMadress(post1+"-"+post2+"/"+address1+"/"+address2);
		member2.setMemtel(tel1 + "-" + tel2 + "-" + tel3);

		member2.setMemail(email + "@" + email2);
		member2.setMbirth(birth + "/" + birth2 + "/" + birth3);
		member2.setMlevel("1");

/* 		System.out.print("여기까지" + name); */

		MemberDao.insertMember(member2);
		
		response.sendRedirect("memberSuccess.jsp");
	%>
	
	<%=member2 %>
</body>
</html>
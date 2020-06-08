<%@page import="model.RentCarBean"%>
<%@page import="dao.RentCarDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="rentcar" class="model.RentCarBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="rentcar"/>
</head>
<body>

<%
String rcno=request.getParameter("rcno");
//out.print(rcno); 

RentCarDAO.updateState(Integer.parseInt(rcno)); 
response.sendRedirect("reserve.jsp");

%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%
        session.invalidate(); // 모든세션정보 삭제
        out.println("<h1>로그아웃 되었습니다.</h1>");

     
        response.sendRedirect("../index.jsp"); // 로그인 화면으로 다시 돌아간다.
    %>


 
</body>
</html>
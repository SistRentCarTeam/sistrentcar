<%@page import="dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 
 <%=
   MemberDao.memberIdCheck(request.getParameter("id"))
  
 %>
 
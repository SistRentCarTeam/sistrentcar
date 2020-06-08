<%@page import="model.ZipBean"%>
<%@page import="dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>쌍용정보통신</title>
<link href="../css/common.css" rel="stylesheet" type="text/css" />
<link href="..css/user.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src=" https://code.jquery.com/jquery-3.5.0.min.js"></script>
<script  src="../js/member.js" charset="UTF-8"></script>
</head>
<%
  request.setCharacterEncoding("utf-8");
  String dong=request.getParameter("dong");
   
  List<ZipBean>list=dong!=null?MemberDao.selectZipCode(dong):null;
    
%>
<body>
<%-- <%=list %> --%>
	<form action="" name="searchFrm" method="post">
		<table width="400" height="380" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" background="../sist/img/join_pop_bg1.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="45" colspan="3"><img
								src="../sist/img/join_pop_title4.gif" width="115" height="20"></td>
						</tr>
						<tr>
							<td width="50" height="30">&nbsp;</td>
							<td>&nbsp;</td>
							<td width="50">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td align="center" style="padding: 10">찾고자 하는 지역의
								&quot;읍,면,동&quot; 이름을 입력하세요.<br> 예: 구의동일 경우, '구의' 로 검색하세요.
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td height="7"></td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="40" align="center" bgcolor="F5F5F5">주소검색 <input
								name="dong" id="dong" type="text" size="25" class="input"> <input id="searchDong"
									type="image" src="../sist/img/btn_search.gif" width="36"
									height="18" border="0" align="absmiddle"></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="7">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="padding: 1" bgcolor="#DDDDDD">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr height="1" bgcolor="f4f4f4">
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr bgcolor="ddddddd">
										<td width="1" bgcolor="f4f4f4"></td>
										<td height="10" align="center" bgcolor="EEEEEE">
										해당 주소를선택하세요.</td>
										<td width="1" bgcolor="f4f4f4"></td>
									</tr>
									
									
								</table>
								<div style="height: 120px; width: 300; overflow: auto;">
									<table width="100%" height="120" border="0" cellpadding="0"
										cellspacing="0" bgcolor="#FFFFFF" class="gray_blue">
										 
										<%
										  if(dong!=null){
											  for(int i=0;i<list.size();i++){
													 ZipBean bean=list.get(i);
													 String addr=bean.getZipcode().trim()+"-"+bean.getSido().trim()+bean.getGugun().trim()+bean.getDong().trim();
										%>
 
										<tr>
											<td height="8"></td>
										</tr>
										<tr>
											<td height="20" style="padding-left: 25;width: 200px;">
											<a href="#" name="addr">
											<%=addr%>
											</a>
											</td>
										</tr>
										<%
											  }
										  }
										%>		
										</table>
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>

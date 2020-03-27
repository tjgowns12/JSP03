<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>main.jsp<br>
<%
if((String)session.getAttribute("loginUser")==null){
	response.sendRedirect("login.jsp");
}

String nick=(String)session.getAttribute("loginUser");
%>
<%=nick %>님 안녕하세요<br>
저희 홈페이지에 방문해 셔서서 감사합니다.<br>
즐거운 시간 되세요~<br>
<input type="button" onclick='location.href="logout.jsp"'value="로그아웃">&nbsp;
<input type="button" onclick='location.href="login.jsp"'value="로그인">

</body>
</html>
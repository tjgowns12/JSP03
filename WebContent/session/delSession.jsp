<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>delSesstion.jsp<br>
<%
session.removeAttribute("age");
session.setMaxInactiveInterval(5);
session.invalidate();
%>
<!-- removeAttribute("age");해당 name만 삭제됨 -->
<!-- setMaxInactiveInterval(5)초가 지난후 모든 세션이 종료/삭제 된다 -->
<!-- invalidate();바로삭제됨 -->
<a href="getSession.jsp">getSession이동</a>&nbsp;&nbsp;
<a href="delSession.jsp">delSession이동</a>&nbsp;&nbsp;
</body>
</html>
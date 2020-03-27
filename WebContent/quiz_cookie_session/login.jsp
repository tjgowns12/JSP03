<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="../cookie/Quiz01.jsp" %>








<%if(session.getAttribute("loginUser")==null){%>
<form action="chkUser.jsp" method="post">
<input type="text" name="id" placeholder="아이디"><br>
<input type="text" name="pwd" placeholder="비 번"><br>
<input type="submit" value="로그인"><br>
</form>
<%}else{
	out.print("저희 사이트에 방문해 주셔서 감사합니다."+"<br>");
	out.print(session.getAttribute("loginUser")+"님 로그인 상태입니다 "+"<br>");
	out.print("<input type='button' value='main이동'"+" onclick=location.href='main.jsp'>");
}
%>
</body>
</html>
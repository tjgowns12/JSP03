<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: skyblue;">CARE LAB</h1>
<h3>방문해 주셔서 감사합니다</h3>
<%
boolean boo=false;
Cookie cookieArr[]=request.getCookies();
if(cookieArr !=null){
	for(Cookie c:cookieArr){

	if(c.getValue().equals("myCookie")){
		boo=true;
	}

	}
}



%>

<%if(boo==false){ %>
<script type="text/javascript">
window.open("Quiz02.jsp","","width=300,height=300,top=500,left=500");
</script>
<%} %>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<br>
<h1 style="color: skyblue;">CARE LAB</h1>
<h3>방문해 주셔서 감사합니다</h3>
<%
boolean boo=false;
Cookie cookieArr[]= request.getCookies();
if(cookieArr !=null){
	for(Cookie c:cookieArr){
		out.print("name:"+c.getName()+"<br>");
		out.print("value:"+c.getValue()+"<br>");
	if(c.getValue().equals("myCookie")){
		boo=true;
	}

	}
}


Cookie cookie=new Cookie("testCookie","myCookie");
cookie.setMaxAge(5);
response.addCookie(cookie);


%>
<%if(boo==false){ %>
<script type="text/javascript">
window.open("popup.jsp","","width=300,height=300,top=500,left=500");
</script>
<%} %>

<!-- 쿠키는 사용자한테 값을 넘겨줌
쿠키는 하위또는 연결된 폴더에 값을 전달해줌 -->

<!-- 
쿠키는 name and value로 설정함
setMaxAge()는 해당하는 쿠키를 얼마나 살려 놓을꺼냐 5는 5초동안 살리겠다는 뜻
response.addCookie는 사용자 한테 해당하는 쿠키값을 던져줌
 -->

<!-- 해당하는 값을 유지하기 위해 쿠키를 사용 
http는 비연결성 통신이기때문.로그인하거나 데이터를 받았을경우 프로그램이 끝남.던지고 받고 끝.
연결이 이루어진 상태가 아님 
쿠키값은 클라이언트에서 보관 그래서 보안에 취약함 그래서 
로그인은 등 인증관련 세션으로 사용(인증과 관련해서 서버를 사용)-->


</body>
</html>
<%@ page contentType="text/html; charset=utf-8" %>
<%
    // 세션 무효화
    session.invalidate();
    //response.sendRedirect("logout.jsp");
    response.sendRedirect("loginForm.jsp");
%>
<html>
<head><title>로그아웃</title></head>
<body>
로그아웃하였습니다.
</body>
</html>
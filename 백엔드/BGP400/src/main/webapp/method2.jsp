<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login-logout practice, method2</title>
</head>
<body>
    <h1>로그인-로그아웃 실습 with session</h1>
    <h3>method2 : 스크립틀릿 + HTML 믹스 방법</h3>
    <hr>
<%
    String loginState = (String) session.getAttribute("loginState");
    if (loginState == null) loginState = "logout";

    if ("login".equals(loginState)) {
%>
    <%= (String)session.getAttribute("userid") %>님 로그인중.
    <form name="Logout" method="post" action="<%=request.getContextPath()%>/signin_dao.jsp">
        <input type="hidden" name="actionType" value="LOGOUT">
        <input type="submit" value="로그아웃">
    </form>
<%  } else { %>
    <form name="Login" method="post" action="<%=request.getContextPath()%>/signin_dao.jsp">
        아이디 : <input type="text" name="userid" size="10">
        비밀번호 : <input type="password" name="passwd" size="10">
        <input type="hidden" name="actionType" value="LOGIN">
        <input type="submit" value="로그인">
    </form>
    <hr>
<%      if ("errorID".equals(loginState)) { %>
        [사용자ID오류]<br>
<%      } else if ("errorPW".equals(loginState)) { %>
        [사용자PW오류]<br>
<%      } %>
<%  } %>

    <p><a href="<%=request.getContextPath()%>/index.jsp">홈으로</a></p>
</body>
</html>

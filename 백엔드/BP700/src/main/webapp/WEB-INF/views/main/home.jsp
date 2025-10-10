<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%-- 
    이 home.jsp 파일은 웹사이트의 메인 페이지 역할을 합니다.
    WEB-INF/views/common 폴더에 있는 header.jsp와 footer.jsp를 포함하여
    전체 페이지 레이아웃을 구성하고, 그 사이에 메인 페이지의 고유한 콘텐츠를 배치합니다.
--%>
<head>
    <title>BPG00 Practice#1(JSP기초)</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/home.css">
</head>
<body>
    <%-- 1. 헤더 포함 --%>
    <%@ include file="/WEB-INF/views/common/header.jsp" %>

    <%-- 2. 메인 포함 --%>
    <jsp:include page="${contentPage}" />

    <%-- 3. 푸터 포함 --%>
    <%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

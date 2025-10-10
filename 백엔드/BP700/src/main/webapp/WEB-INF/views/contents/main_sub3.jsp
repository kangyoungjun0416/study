<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="calc" class="bp700.utils.Calculator" />
<jsp:setProperty name="calc" property="*" />

<main>
    <h1>JSP 계산기실습(jsp:useBean 액션태그)</h1>
    <hr>
    <form method="post" action="menu3.do">
        <input type="text" name="n1" size="10">
        <select name="op">
            <option>+</option>
            <option>-</option>
            <option>/</option>
            <option>*</option>
        </select>
        <input type="text" name="n2" size="10">
        <input type="submit" value="실행">
    </form>
    <hr>
    결과: <%= calc.calc() %>
    <hr>
    <h1>jsp:include 액션태그</h1>
    <jsp:include page="/WEB-INF/views/etc/hello.jsp"></jsp:include>
    <hr>
    <h1>jsp:forward 액션태그(결과값이 0보다 작으면 홈으로 이동)</h1>
    <%
        if (calc.calc() < 0) {
    %>
        <jsp:forward page="/home.do"/>
    <%
        }
    %>
</main>

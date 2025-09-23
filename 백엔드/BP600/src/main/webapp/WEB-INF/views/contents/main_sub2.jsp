<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
    String ns1 = request.getParameter("n1");
    String ns2 = request.getParameter("n2");
    String op = request.getParameter("op");

    if(ns1 == null) ns1="0";
    if(ns2 == null) ns2="0";

    int n1 = Integer.parseInt(ns1);
    int n2 = Integer.parseInt(ns2);

    if(op == null) op = "+";

    long result = 0;

    switch(op) {
        case "+": result = n1+n2; break;
        case "-": result = n1-n2; break;
        case "/": result = n1/n2; break;
        case "*": result = n1*n2; break;
        default: break;
    }
%>

<main>
    <h1>JSP 계산기실습 페이지</h1>
    <hr>
    <form method="post" action="menu2.do">
        <input type="text" name="n1" size="10">
        <select name="op">
            <option>+</option>
            <option>-</option>
            <option>*</option>
            <option>/</option>
        </select>
        <input type="text" name="n2" size="10">
        <input type="submit" value="실행">
    </form>
    <hr>
    결과: <%=result %>
</main>

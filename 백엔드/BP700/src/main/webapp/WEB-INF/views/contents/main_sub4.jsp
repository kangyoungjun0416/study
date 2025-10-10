<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<main>
<%
    // Java.util.ArrayList 객체를 생성하고 값을 추가합니다.
    java.util.List<Integer> list = new java.util.ArrayList<>();
    list.add(1);
    list.add(2);
    list.add(3);
    list.add(4);
    list.add(5);

    // 생성한 리스트를 request scope에 "intArray"라는 이름으로 저장합니다.
    request.setAttribute("intArray", list);
%>

<h2>JSTL/EL 종합 예제</h2>
<hr>
<h3>
    set, out 코어태그 활용
</h3>
<c:set var="product1" value="<h2>애플 아이폰</h2>" />
<c:set var="product2" value="삼성 갤럭시 노트" />
<p>
product1(jstl) 스타일 출력:
<c:out value="${product1}" default="Not registered" escapeXml="true" />
<c:out value="${product1}" default="Not registered" escapeXml="false" />
</p>

<p>
product1(el): ${product1}
intArray[2]: ${intArray[2]}
</p>
<hr>

<h3>forEach 코어태그 활용: 배열 출력</h3>
<ul>
<c:forEach var="num" varStatus="i" items="${intArray}">
    <li>${i.index} : ${num}</li>
</c:forEach>
</ul>
<hr>

<h3>if 코어태그 활용</h3>
<c:set var="checkout" value="true" />
<c:if test="${checkout}">
    <p>주문 제품: ${product2}</p>
</c:if>
<c:if test="${!checkout}">
    <p>주문 제품 아님!!</p>
</c:if>

<c:if test="${!empty product2}">
    <p>
        <b>${product2} 이미 추가됨!!</b>
    </p>
</c:if>
<hr>

<h3>choose, when, otherwise 코어태그 활용</h3>
<c:choose>
    <c:when test="${checkout}">
        <p>주문 제품: ${product2}</p>
    </c:when>
    <c:otherwise>
        <p>주문 제품 아님!!</p>
    </c:otherwise>
</c:choose>
<hr>

<h3>forTokens 코어태그 활용</h3>
<c:forTokens var="city" items="Seoul|Tokyo|New York|Toronto" delims="|" varStatus="i">
    <c:if test="${i.first}">도시 목록 : </c:if>
    ${city}
    <c:if test="${!i.last}">,</c:if>
</c:forTokens>
<hr>

<h3>EL(Expression Language) 태그 활용</h3>
product1 : ${product1}
product2 : ${product2}
intArray : ${intArray}<p>

10 + 20 : ${10 + 20}<p>
10 * 20 : ${10 * 20}<p>
true && false : ${true && false}<p>
10 >= 20 : ${10 >= 20}<p>
user.name == "홍길동" ? "교수" : "학생" :
${user.name == "홍길동" ? "교수" : "학생"}<p>
</main>

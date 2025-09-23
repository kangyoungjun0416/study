<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<main>
    <h1>JSP 종합실습 페이지</h1>
    <hr>

    <!-- JSP 선언 태그 -->
    <%! 
        String[] members = { "홍길동", "박철수", "이진주", "김상철" };
        int num1 = 10;

        int calc(int num2) {
            return num1 + num2;
        }
    %>

    <h3>1. JSP 주석</h3>
    <!-- HTML 주석 : 화면에서는 안보이고 소스 보기에는 보임 -->
    <%-- JSP 주석 : 화면과 소스 보기에서 보이지 않음 --%>

    <h3>
        2. calc(20) 메서드 실행 결과: 
        <%=calc(20)%>
    </h3>

    <h3>3. include: hello.jsp</h3>
    <%@ include file="/WEB-INF/views/etc/hello.jsp"%>

    <h3>4. 스크립트(배열 데이터 출력)</h3>
    <sub>
        <ul>
        <%
            for (String name : members) {
        %>
                <li><%=name%></li>
        <%
            }
        %>
        </ul>
    </sub>
</main>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<header>
    <div>
        <a href="home.do">
            <img src="${pageContext.request.contextPath}/assets/img/yger_com_logo.png" alt="영진로고이미지">
        </a>
    </div>
    <div>
        <h1 class="shine-text">백엔드프로그래밍#600</h1>
    </div>
    <nav>
        <ul>
            <li><a href="menu1.do">JSP종합실습</a></li>
            <li><a href="menu2.do">계산기실습</a></li>
            <li><a href="#">추가메뉴1</a></li>
            <li><a href="#">추가메뉴2</a></li>
        </ul>
    </nav>
    <div>
        <form class="login-form">
            <input class="login-input" type="text" placeholder="아이디">
            <input class="login-input" type="password" placeholder="비밀번호">
            <button class="login-btn" type="submit">로그인</button>
            <button type="button">회원가입</button>
        </form>
    </div>
</header>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bp2101004.board.BoardDAO" %>
<%@ page import="bp2101004.board.BoardDTO" %>

<%
    // 메인에서 보여줄 최근 글 3개
    BoardDAO dao = new BoardDAO();
    List<BoardDTO> recentList = dao.findRecent(3);   // findRecent(int) 메서드 사용
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메인 페이지</title>
    <style>
        body {
            font-family: "맑은 고딕", sans-serif;
            background-color: #f5f6fa;
            margin: 0;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px 20px 80px 20px; /* 아래쪽 여유 */
        }

        /* 상단 로고 + 제목 영역 */
        .top-area {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .logo-area img {
            height: 70px;
        }
        .site-title {
            flex: 1;
            text-align: center;
            font-size: 30px;
            font-weight: bold;
            color: #4da3ff;
            text-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
        }

        /* 메인 이미지 영역 */
        .main-image {
            width: 100%;
            height: 250px;
            border-radius: 12px;
            overflow: hidden;
            margin: 0 auto 30px auto;
            background: #ddd;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .main-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* 최근 게시글 영역 */
        .section-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }
        .section-header h2 {
            margin: 0;
            font-size: 20px;
        }
        .plus-btn {
            display: inline-block;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            border: 1px solid #333;
            text-align: center;
            line-height: 28px;
            text-decoration: none;
            color: #333;
            font-weight: bold;
            font-size: 20px;
        }
        .plus-btn:hover {
            background-color: #333;
            color: #fff;
        }

        .recent-list {
            list-style: none;
            padding: 0;
            margin: 0;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 0 6px rgba(0,0,0,0.08);
        }
        .recent-list li {
            display: flex;
            align-items: center;
            padding: 10px 14px;
            border-bottom: 1px solid #eee;
        }
        .recent-list li:last-child {
            border-bottom: none;
        }
        .recent-dot {
            width: 10px;
            height: 10px;
            border-radius: 50%;
            border: 2px solid #555;
            margin-right: 10px;
        }
        .recent-title {
            flex: 1;
        }
        .recent-title a {
            text-decoration: none;
            color: #333;
        }
        .recent-title a:hover {
            text-decoration: underline;
        }
        .recent-meta {
            font-size: 12px;
            color: #888;
            margin-left: 8px;
        }
        .empty-msg {
            padding: 12px 14px;
            color: #888;
        }

        /* 하단 검은 박스 */
        .footer {
            width: 100%;
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 16px 0;
            position: relative;
            bottom: 0;
            margin-top: 40px;
        }
    </style>
</head>
<body>
<div class="container">

    <!-- 상단 로고 + 제목 -->
    <div class="top-area">
        <div class="logo-area">
            <!-- 로고 이미지는 자기가 넣을 것 -->
            <a href="${pageContext.request.contextPath}/">
                <img src="${pageContext.request.contextPath}/images/YJPlogo.png" alt="로고">
            </a>
        </div>
        <div class="site-title">
            백엔드프로그래밍 게시판
        </div>
        <div style="width:70px;"></div> <!-- 오른쪽 균형용 빈 공간 -->
    </div>

    <!-- 메인 이미지 영역 (자기가 이미지 교체) -->
    <div class="main-image">
        <img src="${pageContext.request.contextPath}/images/windowmain.png" alt="메인 이미지">
    </div>

    <!-- 최근 게시글 + + 버튼 -->
    <div class="section-header">
        <h2>최근 게시글</h2>
        <!-- + 버튼 → 게시판 목록 -->
        <a class="plus-btn" href="${pageContext.request.contextPath}/board/list">+</a>
    </div>

    <!-- 최근 게시글 리스트 -->
    <ul class="recent-list">
        <%
            if (recentList == null || recentList.isEmpty()) {
        %>
            <li class="empty-msg">등록된 글이 없습니다.</li>
        <%
            } else {
                for (BoardDTO b : recentList) {
        %>
            <li>
                <div class="recent-dot"></div>
                <div class="recent-title">
                    <a href="<%= request.getContextPath() %>/board/view?id=<%= b.getId() %>">
                        <%= b.getTitle() %>
                    </a>
                    <span class="recent-meta">
                        (<%= b.getWriter() %>)
                    </span>
                </div>
            </li>
        <%
                }
            }
        %>
    </ul>

</div>

<!-- 하단 검은 박스 -->
<div class="footer">
    make &copy; 강영준
</div>

</body>
</html>

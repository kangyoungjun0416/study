<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="bp2101004.board.BoardDTO" %>

<%
    // Controller(BoardController)에서 setAttribute("list", ...) 한 값 받기
    List<BoardDTO> list = (List<BoardDTO>) request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
    <style>
        body {
            font-family: "맑은 고딕", sans-serif;
            background-color: #f5f6fa;  /* 메인 화면과 같은 배경색 */
            margin: 0;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px 20px 40px 20px;
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
            font-size: 32px;
            font-weight: bold;
            color: #4da3ff;
            text-shadow: 0 0 8px rgba(0, 0, 0, 0.3);
        }
        .dummy-right {
            width: 70px;
        }

        /* 카드(흰 박스) */
        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 6px rgba(0,0,0,0.08);
            padding: 20px;
        }
        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 12px;
        }
        .card-header h2 {
            margin: 0;
            font-size: 22px;
        }

        /* 버튼 */
        .btn {
            display: inline-block;
            padding: 6px 14px;
            border-radius: 6px;
            border: 1px solid #999;
            background-color: #fff;
            color: #333;
            text-decoration: none;
            font-size: 13px;
            margin-left: 6px;
        }
        .btn:hover {
            background-color: #f0f0f0;
        }
        .btn-primary {
            border-color: #4da3ff;
            background-color: #4da3ff;
            color: #fff;
        }
        .btn-primary:hover {
            background-color: #2f8ae6;
        }

        /* 테이블 */
        .board-table {
            width: 100%;
            border-collapse: collapse;
            font-size: 14px;
        }
        .board-table th,
        .board-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }
        .board-table th {
            background-color: #f2f4f7;
        }
        .board-table td.title {
            text-align: left;
        }
        .board-table td.title a {
            text-decoration: none;
            color: #333;
        }
        .board-table td.title a:hover {
            text-decoration: underline;
        }
        .empty-row {
            text-align: center;
            color: #888;
            padding: 20px 0;
        }
    </style>
</head>
<body>
<div class="container">

    <!-- 상단 로고 + 제목 -->
    <div class="top-area">
        <div class="logo-area">
            <!-- 로고 클릭하면 메인으로 -->
            <a href="${pageContext.request.contextPath}/index.jsp">
                <img src="${pageContext.request.contextPath}/images/YJPlogo.png" alt="로고">
            </a>
        </div>
        <div class="site-title">
            게시판 목록
        </div>
        <div class="dummy-right"></div>
    </div>

    <!-- 게시판 목록 카드 -->
    <div class="card">
        <div class="card-header">
            <h2>게시판 목록</h2>
            <div>
                <!-- ✅ 홈 버튼 삭제, 글쓰기만 유지 -->
                <a href="${pageContext.request.contextPath}/board/write" class="btn btn-primary">글쓰기</a>
            </div>
        </div>

        <table class="board-table">
            <thead>
            <tr>
                <th style="width:60px;">번호</th>
                <th>제목</th>
                <th style="width:120px;">작성자</th>
                <th style="width:200px;">작성일</th>
                <th style="width:60px;">조회</th>
            </tr>
            </thead>
            <tbody>
            <%
                if (list != null && !list.isEmpty()) {
                    for (BoardDTO dto : list) {
            %>
            <tr>
                <td><%= dto.getId() %></td>
                <td class="title">
                    <a href="<%= request.getContextPath() %>/board/view?id=<%= dto.getId() %>">
                        <%= dto.getTitle() %>
                    </a>
                </td>
                <td><%= dto.getWriter() %></td>
                <td><%= dto.getCreatedAt() %></td>
                <td><%= dto.getHit() %></td>
            </tr>
            <%
                    }
                } else {
            %>
            <tr>
                <td colspan="5" class="empty-row">등록된 글이 없습니다.</td>
            </tr>
            <%
                }
            %>
            </tbody>
        </table>
    </div>

</div>
</body>
</html>

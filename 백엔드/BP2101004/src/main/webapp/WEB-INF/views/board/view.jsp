<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="bp2101004.board.BoardDTO" %>
<%@ page import="java.text.SimpleDateFormat" %>

<%
    BoardDTO board = (BoardDTO) request.getAttribute("board");

    // 작성일 포맷 (밀리초 제거)
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String createdAt = sdf.format(board.getCreatedAt());
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>게시글 보기</title>

    <style>
        body {
            background-color: #f3f5fa;
            font-family: '맑은 고딕', sans-serif;
            margin: 0;
            padding: 0;
        }

        /* 전체 카드 영역 */
        .container {
            width: 70%;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        /* 상단 제목 */
        h1 {
            text-align: center;
            color: #4a74ff;
            margin: 10px 0 30px 0;
            font-size: 32px;
            font-weight: 700;
        }

        /* 제목/작성자 줄 */
        .title-area {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            padding-bottom: 15px;
            border-bottom: 1px solid #ddd;
            font-weight: bold;
        }

        /* 작성자/작성일 줄 */
        .info-area {
            margin-top: 10px;
            font-size: 14px;
            color: #555;
            text-align: right;
            padding-right: 10px;
        }

        /* 내용 영역 */
        .content-area {
            margin-top: 30px;
            font-size: 16px;
            line-height: 1.6;
            min-height: 200px;
            padding-left: 30px;
        }

        /* 버튼 영역 (→ 오른쪽 정렬) */
        .btn-area {
            text-align: right;
            margin-top: 30px;
            padding-right: 10px;
        }

        button {
            padding: 8px 18px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            margin-left: 6px;
            font-size: 14px;
        }

        .btn-list   { background: #e5e5e5; color: #333; }
        .btn-edit   { background: #4d90fe; color: #fff; }
        .btn-delete { background: #ff6b6b; color: #fff; }
    </style>
</head>
<body>

<!-- 로고: 크기 고정 + 홈 이동 -->
<a href="<%= request.getContextPath() %>/index.jsp">
    <img src="<%= request.getContextPath() %>/images/YJPlogo.png"
         alt="로고"
         style="height:70px; margin:20px 0 0 20px;">
</a>

<h1>게시글 보기</h1>

<div class="container">

    <!-- 제목 / 작성자 -->
    <div class="title-area">
        <div>제목&nbsp; <%= board.getTitle() %></div>
        <div>작성자&nbsp; <%= board.getWriter() %></div>
    </div>

    <!-- 작성자 / 작성일 (밀리초 제거됨) -->
    <div class="info-area">
        작성자: <%= board.getWriter() %> &nbsp; | &nbsp;
        작성일: <%= createdAt %>
    </div>

    <!-- 내용 -->
    <div class="content-area">
        <%= board.getContent().replaceAll("\n", "<br>") %>
    </div>

    <!-- 버튼: 오른쪽 아래 -->
    <div class="btn-area">
        <button class="btn-list"
                onclick="location.href='<%= request.getContextPath() %>/board/list'">
            목록
        </button>
        <button class="btn-edit"
                onclick="location.href='<%= request.getContextPath() %>/board/edit?id=<%= board.getId() %>'">
            수정
        </button>
        <button class="btn-delete"
                onclick="if(confirm('삭제하시겠습니까?')) location.href='<%= request.getContextPath() %>/board/delete?id=<%= board.getId() %>'">
            삭제
        </button>
    </div>

</div>

</body>
</html>

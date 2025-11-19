<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="bp2101004.board.BoardDTO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글 수정</title>
</head>
<body>
<%
    BoardDTO board = (BoardDTO) request.getAttribute("board");
    if (board == null) {
%>
    <p>해당 글을 찾을 수 없습니다.</p>
    <p><a href="<%= request.getContextPath() %>/board/list">목록으로</a></p>
<%
    } else {
%>
    <h1>글 수정</h1>

    <form action="<%= request.getContextPath() %>/board/edit" method="post">
        <input type="hidden" name="id" value="<%= board.getId() %>">

        <p>
            제목 : <input type="text" name="title" size="60" value="<%= board.getTitle() %>">
        </p>
        <p>
            작성자 : <input type="text" name="writer" size="30" value="<%= board.getWriter() %>">
        </p>
        <p>
            내용 : <br>
            <textarea name="content" rows="10" cols="60"><%= board.getContent() %></textarea>
        </p>
        <p>
            <button type="submit">수정 완료</button>
            <a href="<%= request.getContextPath() %>/board/view?id=<%= board.getId() %>">취소</a>
        </p>
    </form>
<%
    }
%>
</body>
</html>

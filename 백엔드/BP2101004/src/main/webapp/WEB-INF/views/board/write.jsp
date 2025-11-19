<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>글쓰기</title>
    <style>
        body {
            font-family: "맑은 고딕", sans-serif;
            background-color: #f5f6fa;  /* 메인/목록과 같은 배경색 */
            margin: 0;
        }
        .container {
            max-width: 800px;
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
            padding: 20px 24px 24px 24px;
        }
        .card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 16px;
        }
        .card-header h2 {
            margin: 0;
            font-size: 22px;
        }

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
            cursor: pointer;
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

        /* 폼 요소 */
        .form-group {
            margin-bottom: 14px;
        }
        .form-label {
            display: block;
            font-weight: bold;
            margin-bottom: 4px;
        }
        .form-input, .form-textarea {
            width: 100%;
            padding: 8px 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            box-sizing: border-box;
            font-size: 14px;
        }
        .form-input:focus,
        .form-textarea:focus {
            outline: none;
            border-color: #4da3ff;
            box-shadow: 0 0 0 2px rgba(77,163,255,0.2);
        }
        .form-textarea {
            min-height: 200px;
            resize: vertical;
        }

        .form-actions {
            margin-top: 18px;
            text-align: right;
        }
    </style>
</head>
<body>
<div class="container">

    <!-- 상단 로고 + 제목 -->
    <div class="top-area">
        <div class="logo-area">
            <a href="${pageContext.request.contextPath}/index.jsp">
                <img src="${pageContext.request.contextPath}/images/YJPlogo.png" alt="로고">
            </a>
        </div>
        <div class="site-title">
            글쓰기
        </div>
        <div class="dummy-right"></div>
    </div>

    <!-- 글쓰기 카드 -->
    <div class="card">
        <div class="card-header">
            <h2>새 글 작성</h2>
            <div>
                <a href="${pageContext.request.contextPath}/board/list" class="btn">목록으로</a>
            </div>
        </div>

        <!-- 글쓰기 폼 -->
        <form action="${pageContext.request.contextPath}/board/write" method="post">
            <div class="form-group">
                <label class="form-label" for="title">제목</label>
                <input type="text" id="title" name="title" class="form-input"
                       placeholder="제목을 입력하세요." required>
            </div>

            <div class="form-group">
                <label class="form-label" for="writer">작성자</label>
                <input type="text" id="writer" name="writer" class="form-input"
                       placeholder="작성자를 입력하세요." required>
            </div>

            <div class="form-group">
                <label class="form-label" for="content">내용</label>
                <textarea id="content" name="content" class="form-textarea"
                          placeholder="내용을 입력하세요." required></textarea>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">등록</button>
                <button type="button" class="btn" onclick="history.back();">취소</button>
            </div>
        </form>
    </div>

</div>
</body>
</html>

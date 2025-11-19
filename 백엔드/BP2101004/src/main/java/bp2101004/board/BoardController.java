package bp2101004.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/board/*")
public class BoardController extends HttpServlet {

    private BoardDAO boardDAO = new BoardDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = request.getPathInfo();  //  /list, /view, /write, /edit, /delete
        System.out.println("▶ doGet(), path = " + path);

        if (path == null || "/".equals(path) || "/list".equals(path)) {
            // 목록
            List<BoardDTO> list = boardDAO.findAll();
            System.out.println("▶ 목록 개수 = " + list.size());
            request.setAttribute("list", list);
            request.getRequestDispatcher("/WEB-INF/views/board/list.jsp")
                   .forward(request, response);

        } else if ("/view".equals(path)) {
            int id = Integer.parseInt(request.getParameter("id"));

            // ★ 조회수 1 증가
            boardDAO.increaseHit(id);

            // ★ 증가된 조회수까지 다시 읽기
            BoardDTO dto = boardDAO.findById(id);

            request.setAttribute("board", dto);
            request.getRequestDispatcher("/WEB-INF/views/board/view.jsp")
                   .forward(request, response);
            
        } else if ("/write".equals(path)) {
            // 글쓰기 폼
            request.getRequestDispatcher("/WEB-INF/views/board/write.jsp")
                   .forward(request, response);

        } else if ("/edit".equals(path)) {
            int id = Integer.parseInt(request.getParameter("id"));
            BoardDTO dto = boardDAO.findById(id);
            request.setAttribute("board", dto);
            request.getRequestDispatcher("/WEB-INF/views/board/edit.jsp")
                   .forward(request, response);

        } else if ("/delete".equals(path)) {
            int id = Integer.parseInt(request.getParameter("id"));
            boardDAO.delete(id);
            response.sendRedirect(request.getContextPath() + "/board/list");

        } else {
            response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();
        System.out.println("▶ doPost(), path = " + path);

        if ("/write".equals(path)) {
            // 글 등록
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String writer = request.getParameter("writer");

            System.out.println("▶ 글쓰기 파라미터: title=" + title + ", writer=" + writer);

            BoardDTO dto = new BoardDTO();
            dto.setTitle(title);
            dto.setContent(content);
            dto.setWriter(writer);

            boardDAO.insert(dto);
            response.sendRedirect(request.getContextPath() + "/board/list");

        } else if ("/edit".equals(path)) {
            // 글 수정
            int id = Integer.parseInt(request.getParameter("id"));
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String writer = request.getParameter("writer");

            System.out.println("▶ 수정 파라미터: id=" + id + ", title=" + title);

            BoardDTO dto = new BoardDTO();
            dto.setId(id);
            dto.setTitle(title);
            dto.setContent(content);
            dto.setWriter(writer);

            boardDAO.update(dto);
            response.sendRedirect(request.getContextPath() + "/board/view?id=" + id);

        } else {
            response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
        }
    }
}

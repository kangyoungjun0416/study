package bp600.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//*.do 로 끝나는 모든 요청을 처리 한다.
@WebServlet("*.do")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HomeController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 요청 URL에서 경로 추출
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = uri.substring(contextPath.length());
		// /home.do 실제 요청 경로를 command에 저장된다.
		
		String viewPage = "/WEB-INF/views/main/home.jsp";
		String contentPage = "/WEB-INF/views/contents/home_main.jsp";

		// 명령어(command)에 따라 분기 처리
		switch (command) {
		    case "/home.do":
		        contentPage = "/WEB-INF/views/contents/home_main.jsp";
		        break;

		    case "/menu1.do":
		        contentPage = "/WEB-INF/views/contents/main_sub1.jsp";
		        break;

		    case "/menu2.do":
		        contentPage = "/WEB-INF/views/contents/main_sub2.jsp";
		        break;

		    default:
		        // 알 수 없는 404 페이지 등으로 처리
		        contentPage = "/WEB-INF/views/errors/404.jsp";
		        break;
		}
		
		// contaentPage를 request에 저장한다.
		request.setAttribute("contentPage", contentPage);

		// home.jsp로 포워딩
		request.getRequestDispatcher(viewPage).forward(request, response);

	}
}


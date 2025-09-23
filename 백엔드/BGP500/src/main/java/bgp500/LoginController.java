package bgp500;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private LoginDAO loginDAO;
    private LoginDTO loginDTO;

    public LoginController() {
        super();
    }

    public void init(ServletConfig config) throws ServletException {
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
        String userid = request.getParameter("userid");
        String passwd = request.getParameter("passwd");

        loginDAO = new LoginDAO();
        loginDTO = new LoginDTO();

        loginDTO.setUserID(userid);
        loginDTO.setUserPW(passwd);

        HttpSession session = request.getSession(true);

        if ("LOGIN".equals(request.getParameter("actionType"))) {
            loginDTO.setLoginState("login");
            // DTO를 DAO에 전달하여 loginState 상태를 업데이트하여 다시 받음
            loginDTO = loginDAO.loginAuth(loginDTO);

            session.setAttribute("loginState", loginDTO.getLoginState());
            session.setAttribute("userID", loginDTO.getUserID());
            session.setAttribute("userPW", loginDTO.getUserPW());
        } else {
            session.invalidate();
        }

        response.sendRedirect(request.getContextPath() + "/Login.jsp");
    }
}

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><%
    request.setCharacterEncoding("UTF-8");

    String actionType = request.getParameter("actionType");
    if (actionType == null) {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
        return;
    }

    final String userID_DUMMY = "kdhong";
    final String userPW_DUMMY = "1234";

    switch (actionType) {
        case "LOGIN":
            String userID = request.getParameter("userid");
            String userPW = request.getParameter("passwd");

            // 파라미터 검증
            if (userID == null || userPW == null || userID.trim().isEmpty() || userPW.trim().isEmpty()) {
                session.setAttribute("loginState", "errorID");
                break;
            }

            if (userID_DUMMY.equals(userID)) {
                if (userPW_DUMMY.equals(userPW)) {
                    session.setAttribute("loginState", "login");
                    session.setAttribute("userID", userID);
                    // 주의 : 실무에서는 보안상 비밀번호를 세션에 저장하지 않음
                    session.setAttribute("userPW", userPW);
                } else {
                    session.setAttribute("loginState", "errorPW");
                    session.setAttribute("userID", userID);
                    session.removeAttribute("userPW");
                }
            } else {
                session.setAttribute("loginState", "errorID");
                session.removeAttribute("userID");
                session.removeAttribute("userPW");
            }
            break;

        case "LOGOUT":
            session.invalidate();
            break;

        default:
            // 알 수 없는 actionType이면 홈으로 이동
            response.sendRedirect(request.getContextPath() + "/index.jsp");
            return;
    }

    // 호출자(Referer)로 돌아가기, 없으면 홈으로 이동
    String referer = request.getHeader("referer");
    if (referer != null && !referer.isEmpty()) {
        response.sendRedirect(referer);
    } else {
        response.sendRedirect(request.getContextPath() + "/index.jsp");
    }
%>

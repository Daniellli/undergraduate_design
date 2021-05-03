package edu.xmuter.servlet;

import edu.xmuter.bean.Problem;
import edu.xmuter.dao_imp.ProblemDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Servlet_get_problem")
public class Servlet_get_problem extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”

        HttpSession session = request.getSession();
        List<Problem> problems = new ProblemDaoImp().get_all_problems();
        session.setAttribute("problems", problems);
        response.sendRedirect(base_path + "view/compusAnswer.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

package edu.xmuter.servlet;

import edu.xmuter.bean.Answer;
import edu.xmuter.bean.Problem;
import edu.xmuter.dao_imp.AnswerDaoImp;
import edu.xmuter.dao_imp.ProblemDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Servlet_get_problem_detail")
public class Servlet_get_problem_detail extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”


        int pno = Integer.parseInt(request.getParameter("pno"));
        List<Answer> all_answer = new AnswerDaoImp().get_all_answer(pno);
        Problem problem = new ProblemDaoImp().get_problem_by_pno(pno);
        HttpSession session = request.getSession();
//        List<Answer> answers = (List<Answer>) session.getAttribute("answers");
        session.setAttribute("answers", all_answer);
        session.setAttribute("problem", problem);

        response.sendRedirect(base_path + "view/answerDetail.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

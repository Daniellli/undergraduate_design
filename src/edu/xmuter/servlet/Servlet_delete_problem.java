package edu.xmuter.servlet;

import com.google.gson.Gson;
import edu.xmuter.dao_imp.ProblemDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet("/Servlet_delete_problem")
public class Servlet_delete_problem extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String base_path = request.getScheme() + "://" + request.getServerName() + ":" +
                request.getServerPort() + request.getContextPath() + "/";//getServerPort 会带上一个”/”


        int pno = Integer.parseInt(request.getParameter("pno"));
        boolean flag = new ProblemDaoImp().delete_problem(pno);

        PrintWriter out = response.getWriter();
        out.println(new Gson().toJson(flag));
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}

package edu.xmuter.servlet;

import com.google.gson.Gson;
import edu.xmuter.bean.Answer;
import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.AnswerDaoImp;
import edu.xmuter.utils.Time_Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

@WebServlet("/Servlet_add_answer")
public class Servlet_add_answer extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        /*
         * get current user through session
         * */
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");


        int pno = Integer.parseInt(request.getParameter("pno"));
        String answer = request.getParameter("answer");

        Answer ans = new Answer(user.getUno(), pno, answer, new Date(Time_Utils.get_current_time_in_long()));
        ans.setAuthor_name(user.getName());//返回去 用的，不用存
        boolean flag = new AnswerDaoImp().add_answer(ans);


        PrintWriter out = response.getWriter();
        if (flag) {
            out.println(new Gson().toJson(ans));
        } else {
            out.println("fail to add answer");
        }
        System.out.println("ready to go back to front end");

        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


}

package edu.xmuter.servlet;

import com.google.gson.Gson;
import edu.xmuter.bean.Problem;
import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.ProblemDaoImp;
import edu.xmuter.dao_imp.UserDaoImp;
import edu.xmuter.utils.DB_connection;
import edu.xmuter.utils.Time_Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;

@WebServlet("/Servlet_add_problem")
public class Servlet_add_problem extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();

        String p_content = request.getParameter("p_content");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        boolean flag = new ProblemDaoImp().add_problem(p_content, Time_Utils.get_date_timestamp(), user.getUno());
        System.out.println(flag);

        out.println(new Gson().toJson(flag));
        out.flush();
        out.close();

    }

    /*
     * a test for datetime
     * */
    private void test() {
        Timestamp timestamp = Time_Utils.get_date_timestamp();
        String datetime = Time_Utils.get_date();
        DB_connection.update("insert into problem (p_content,p_date,author_no) values (?,?,?)",
                "hello world", datetime, 1);

        DB_connection.update("insert into problem (p_content,p_date,author_no) values (?,?,?)",
                "hello worldddddddddd", timestamp, 1);
        ResultSet res = DB_connection.query("select * from problem ");
        try {
            while (res.next()) {
                System.out.print(res.getInt("pno") + " ");
                System.out.print(res.getString("p_content") + " ");

                Date t = res.getDate("p_date");
                System.out.print(t.toString() + " ");

                System.out.println(res.getInt("author_no"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }


}

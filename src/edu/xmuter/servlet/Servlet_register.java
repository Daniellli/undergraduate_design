package edu.xmuter.servlet;

import edu.xmuter.bean.User;
import edu.xmuter.dao_imp.UserDaoImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Servlet_register")
public class Servlet_register extends javax.servlet.http.HttpServlet {


    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() +
                request.getContextPath() + "/";

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String u_id = request.getParameter("u_id");
        String pwd = request.getParameter("pwd");
//        String pwd_comfirm = request.getParameter("pwd_comfirm");//check in client
        String name = request.getParameter("name");
        String secure_question = request.getParameter("secure_question");
        String secure_answer = request.getParameter("secure_answer");


        boolean flag = new UserDaoImp().add_user(new User(u_id, pwd, name, secure_question, secure_answer));
//        HttpSession session = request.getSession();

        PrintWriter out = response.getWriter();


        if (flag) {
            out.println("<script>alert('register successfully!')</script>");
            out.println("<script>window.location.href='" + basePath + "index.jsp'</script>");
        } else {
            out.println("<script>alert('fail to register,please check!')</script>");
            out.println("<script>window.history.go(-1)</script>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }


}

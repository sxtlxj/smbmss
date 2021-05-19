
package com.kuang.servlet.user;

import com.kuang.service.user.UserService;
import com.kuang.service.user.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

//@WebServlet("/DelUserServlet")
public class DelUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取id
        String id = req.getParameter("id").toString();
        //2.调用service删除
        UserService service = new UserServiceImpl();
        service.deleteUser(id);

        //跳转到查询所有Servlet
        //resp.sendRedirect(req.getContextPath()+"/userServlet");
        //req.getRequestDispatcher("userlist.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
    }

}

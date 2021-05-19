package com.kuang.servlet.user;

import com.alibaba.fastjson.JSONArray;
import com.kuang.pojo.User;
import com.kuang.service.user.UserService;
import com.kuang.service.user.UserServiceImpl;
import com.kuang.util.Constants;
import com.kuang.util.PageSupport;
import com.mysql.cj.util.StringUtils;
import org.w3c.dom.ls.LSOutput;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        if (method.equals("savepwd")) {
            this.updatePwd(req, resp);
        } else if (method.equals("pwdmodify")) {
            this.pwdModify(req, resp);
        } else if (method.equals("getUserList")) {
            this.getNUser(req, resp);
        } else if (method.equals("add")) {
            this.addUser(req, resp);
        } else if (method.equals("upgrade")) {
            this.upgradeUser(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    //修改密码
    public void updatePwd(HttpServletRequest req, HttpServletResponse resp){
        //从Session里面拿ID;
        Object o = req.getSession().getAttribute(Constants.USER_SESSION);
        String newpassword = req.getParameter("newpassword");
        System.out.println("UserServlet:"+newpassword);
        boolean flag = false;
        System.out.println(o!=null);
        System.out.println(StringUtils.isNullOrEmpty(newpassword));
        if (o!=null && newpassword!=null){
            UserService userService = new UserServiceImpl();
            flag = userService.updatePwd(((User) o).getId(), newpassword);
            if (flag){
                req.setAttribute("message","Modification succeeded, please login again with new password!");
                //密码修改成功，移除当前Session
                req.getSession().removeAttribute(Constants.USER_SESSION);
            }else {
                req.setAttribute("message","Modification failed");
            }
        }else {
            req.setAttribute("message","New password is not in format");
        }
        try {
            req.getRequestDispatcher("pwdmodify.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //验证旧密码,session中有用户的密码
    public void pwdModify(HttpServletRequest req, HttpServletResponse resp){
        //从Session里面拿ID;

        Object o = req.getSession().getAttribute(Constants.USER_SESSION);
        String oldpassword = req.getParameter("oldpassword");
        System.out.println(oldpassword);
        //万能的Map : 结果集
        Map<String, String> resultMap = new HashMap<String,String>();

        if (o==null){ //Session失效了，session过期了
            resultMap.put("result","sessionerror");
        }else if (StringUtils.isNullOrEmpty(oldpassword)){ //输入的密码为空
            resultMap.put("result","error");
        }else {
            String userPassword = ((User) o).getUserPassword(); //Session中用户的密码
            if (oldpassword.equals(userPassword)){
                resultMap.put("result","true");
            }else {
                resultMap.put("result","false");
            }
        }
        try {
            resp.setContentType("application/json");
            PrintWriter writer = resp.getWriter();
            //JSONArray 阿里巴巴的JSON工具类, 转换格式
            /*
            resultMap = ["result","sessionerror","result","error"]
            Json格式 = {key：value}
             */
            writer.write(JSONArray.toJSONString(resultMap));
            // 将缓冲区的数据强制输出，用于清空缓冲区，若直接调用close()方法，则可能会丢失缓冲区的数据。所以通俗来讲它起到的是刷新的作用。
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //添加用户
    private void addUser(HttpServletRequest req, HttpServletResponse resp){
        String userName = req.getParameter("userName");
        String userCode = req.getParameter("userCode");
        String userPassword = req.getParameter("userPassword");
        User user = new User();
        user.setUserName(userName);
        user.setUserCode(userCode);
        user.setUserPassword(userPassword);
        //先试一下其他都不设会怎么样
        UserServiceImpl userService = new UserServiceImpl();
        if(userName!=null&&userCode!=null&&userPassword!=null){
            System.out.println("userName:"+userName);
            userService.addUser(user);
        }
    }

    //get normal userlist
    private void getNUser(HttpServletRequest req, HttpServletResponse resp){
        //普通用户看不了名单
        Object o = req.getSession().getAttribute(Constants.USER_SESSION);
        User u = (User) o;
        if (u.getUserRole()!=1) {
            try {
                req.getRequestDispatcher("error.jsp").forward(req,resp);
            } catch (ServletException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        UserServiceImpl userService = new UserServiceImpl();
        List<User> userList = null;
        System.out.println("get userlist is used");
        userList = userService.getNUser();
        req.setAttribute("userList",userList);
        try {
            req.getRequestDispatcher("userlist.jsp").forward(req,resp);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void upgradeUser(HttpServletRequest req, HttpServletResponse resp){

    }

}

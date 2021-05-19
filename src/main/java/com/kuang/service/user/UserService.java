package com.kuang.service.user;

import com.kuang.pojo.User;

import java.util.List;

public interface UserService {
    //用户登录
    public User login(String userCode, String password);
    //根据用户ID修改密码
    public boolean updatePwd(int id, String pwd);
    //查询记录数
    public int getUserCount(String username,int userRole);
    //根据条件查询用户列表
    /*public List<User> getUserList(String queryUserName, int queryUserRole, int currentPageNo, int pageSize);*/
    //添加用户
    public boolean addUser(User user);
    //获取普通的用户列表
    public List<User> getNUser();

    public boolean deleteUser(String id);
}

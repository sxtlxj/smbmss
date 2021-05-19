package com.kuang.dao.user;

import com.kuang.dao.BaseDao;
import com.kuang.pojo.User;
import com.mysql.cj.util.StringUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    //得到要登录的用户
    public User getLoginUser(Connection connection, String userCode,String userPassword) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet rs = null;
        User user = null;

        if (connection!=null){
            String sql = "select * from smbms_user where userCode=?";
            Object[] params = {userCode};
            //System.out.println(userPassword);
            rs = BaseDao.execute(connection,sql,params,rs,pstm);
            if (rs.next()){
                user = new User();
                user.setId(rs.getInt("id"));
                user.setUserCode(rs.getString("userCode"));
                user.setUserName(rs.getString("userName"));
                user.setUserPassword(rs.getString("userPassword"));
                user.setGender(rs.getInt("gender"));
                user.setBirthday(rs.getDate("birthday"));
                user.setPhone(rs.getString("phone"));
                user.setAddress(rs.getString("address"));
                user.setUserRole(rs.getInt("userRole"));
                user.setCreatedBy(rs.getInt("createdBy"));
                user.setCreationDate(rs.getTimestamp("creationDate"));
                user.setModifyBy(rs.getInt("modifyBy"));
                user.setModifyDate(rs.getTimestamp("modifyDate"));
            }
            BaseDao.closeResource(null,pstm,rs);
            if (!user.getUserPassword().equals(userPassword))
                user=null;
        }
        return user;
    }

    @Override
    public int updatePwd(Connection connection, int id, String password) throws SQLException {
        int excute =0;
        PreparedStatement pstm = null;
        if (connection != null){
            String sql = "update smbms_user set userPassword = ? where id =?";
            Object[] parms = {password,id};
            excute = BaseDao.execute(connection, sql, parms, pstm);
            BaseDao.closeResource(null,pstm,null);
        }
        return excute;
    }

    public int getUserCount(Connection connection, String username, int userRole) throws SQLException {
        //根据用户名或者角色查询用户总数

        PreparedStatement pstm = null;
        ResultSet rs = null;
        int count = 0;

        if (connection!=null){
            StringBuffer sql = new StringBuffer();
            sql.append("select count(1) as count from smbms_user u,smbms_role r where u.userRole = r.id");
            ArrayList<Object> list = new ArrayList<Object>();//存放我们的参数

            if (!StringUtils.isNullOrEmpty(username)){
                sql.append(" and u.userName like ?");
                list.add("%"+username+"%"); //index:0
            }

            if (userRole>0){
                sql.append(" and u.userRole = ?");
                list.add(userRole); //index:1
            }

            //怎么把List转换为数组
            Object[] params = list.toArray();

            System.out.println("UserDaoImpl->getUserCount:"+sql.toString()); //输出最后完整的SQL语句


            rs = BaseDao.execute(connection,  sql.toString(), params, rs, pstm);

            if (rs.next()){
                count = rs.getInt("count"); //从结果集中获取最终的数量
            }
            BaseDao.closeResource(null,pstm,rs);
        }
        return count;
    }

    @Override
    public int addUser(Connection connection, User user) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet rs = null;
        int excute = 0;
        if (connection != null) {
            String sql = "INSERT  INTO `smbms_user`(`userCode`,`userName`,`userPassword`) VALUES (?,?,?)";
            Object[] params = {user.getUserCode(),user.getUserName(),user.getUserPassword()};
            excute = BaseDao.execute(connection, sql, params, pstm);
            BaseDao.closeResource(null, pstm, rs);
        }
        return excute;
    }

    @Override
    //获取正常的用户列表（只包括code, name, password）
    public List<User> getNUser(Connection connection) throws SQLException {
        PreparedStatement pstm = null;
        ResultSet resultSet = null;
        ArrayList<User> users = new ArrayList<User>();

        if (connection!=null){
            String sql = "select * from smbms_user";
            Object[] params = {};
            resultSet = BaseDao.execute(connection, sql,params, resultSet,pstm );

            while (resultSet.next()){
                User user = new User();
                user.setUserName(resultSet.getString("userName"));
                user.setUserCode(resultSet.getString("userCode"));
                user.setUserPassword(resultSet.getString("userPassword"));
                users.add(user);
            }
            BaseDao.closeResource(null,pstm,resultSet);
        }
        return users;
    }

    public int delete(int id){
        Connection connection = BaseDao.getConnection();
        PreparedStatement pstm = null;
        ResultSet rs = null;
        int i = 0;
        if (connection!=null) {
            String sql = "delete from smbms_user where id = ?";
            Object[] params = {id};
            try {
                i = BaseDao.execute(connection, sql, params, pstm);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            BaseDao.closeResource(null,pstm,rs);
        }
        return i;
    }


}


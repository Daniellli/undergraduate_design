package edu.xmuter.dao_imp;

import edu.xmuter.bean.User;
import edu.xmuter.dao.UserDao;
import edu.xmuter.utils.DB_connection;

import java.sql.ResultSet;

public class UserDaoImp implements UserDao {

//    private DB_connection util = new DB_connection();


    @Override
    public boolean add_user(User user) {

        boolean flag = false;

        try {
            flag = DB_connection.update("insert into user " +
                            "(u_id,pwd,name,secure_problem,secure_answer) " +
                            "values(?,?,?,?,?)", user.getU_id(), user.getPwd(), user.getName(),
                    user.getSecure_problem(), user.getSecure_answer());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public User Login(String u_id, String pwd) {
        User res = null;
        ResultSet query = DB_connection.query("select * from user where u_id = ? and pwd = ?", u_id, pwd);
        try {
            if (query.next()) {
                res = new User(query.getInt("uno"), query.getString("u_id")
                        , query.getString("pwd"), query.getString("name")
                        , query.getString("secure_problem"),
                        query.getString("secure_answer"),
                        query.getString("telephone"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return res;
    }

    @Override
    public User get_user_by_uid(String u_id) {
        User res = null;
        ResultSet query = DB_connection.query("select * from user where u_id = ?", u_id);
        try {
            if (query.next()) {
                res = new User(query.getInt("uno"), query.getString("u_id")
                        , query.getString("pwd"), query.getString("name")
                        , query.getString("secure_problem"), query.getString("secure_answer"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return res;
    }

    @Override
    public boolean update_user_pwd(int uno, String pwd) {
        return DB_connection.update("update user set pwd = ? where uno = ?", pwd, uno);
    }
}

package edu.xmuter.dao;

import edu.xmuter.bean.User;

public interface UserDao {

    public boolean add_user(User user);

    public User Login(String u_id, String pwd);

    public User get_user_by_uid(String u_id);//用来修改密码

    public boolean update_user_pwd(int uno, String pwd);


}

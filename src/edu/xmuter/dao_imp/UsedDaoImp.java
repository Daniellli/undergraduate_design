package edu.xmuter.dao_imp;

import edu.xmuter.bean.Used;
import edu.xmuter.dao.UsedDao;
import edu.xmuter.dao.UserDao;
import edu.xmuter.utils.DB_connection;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsedDaoImp implements UsedDao {
    @Override
    public boolean add_used(Used used) {
        return DB_connection.update("insert into used_thing (used_name,used_desc,price,img_address,used_date,author_no) " +
                        "values (?,?,?,?,?,?)",
                used.getUsed_name(), used.getUsed_desc(), used.getPrice(), used.getImg_address(), used.getUsed_date(),
                used.getAuthor_no()
        );
    }

    @Override
    public boolean delete_used(Integer used_no) {

        return DB_connection.update("delete from  used_thing where used_no = ?", used_no);
    }

    @Override
    public List<Used> get_all_used() {
        List<Used> res = new ArrayList<Used>();
        try {
            ResultSet resultSet = DB_connection.query("select * from used_thing_view");

            while (resultSet.next()) {
                Used tmp = new Used(resultSet.getInt("used_no"), resultSet.getString("used_name"),
                        resultSet.getString("used_desc"), resultSet.getDouble("price"),
                        resultSet.getString("img_address"), resultSet.getDate("used_date"),
                        resultSet.getInt("author_no"), resultSet.getString("author_name"),
                        resultSet.getString("telephone"));
                res.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}

package edu.xmuter.dao_imp;

import edu.xmuter.bean.Answer;
import edu.xmuter.dao.AnswerDao;
import edu.xmuter.utils.DB_connection;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AnswerDaoImp implements AnswerDao {


    @Override
    public boolean add_answer(Answer ans) {

        return DB_connection.update("insert into answer (pno,author_no,a_content,a_date) values (?,?,?,?)",
                ans.getPno(), ans.getAuthor_no(), ans.getA_content(), ans.getA_date());
    }

    @Override
    public List<Answer> get_all_answer(Integer pno) {
        List<Answer> res = new ArrayList<Answer>();

        ResultSet resultSet = DB_connection.query("select * from answer_view where pno = ?", pno);

        try {
            while (resultSet.next()) {
                Answer tmp = new Answer(resultSet.getInt("ano"),
                        resultSet.getInt("pno"),
                        resultSet.getInt("author_no"),
                        resultSet.getString("a_content"),
                        resultSet.getDate("a_date"),
                        resultSet.getString("author_name"));
                res.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return res;
    }
}

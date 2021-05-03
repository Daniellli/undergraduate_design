package edu.xmuter.dao_imp;

import edu.xmuter.bean.Answer;
import edu.xmuter.bean.Problem;
import edu.xmuter.dao.ProblemDao;
import edu.xmuter.utils.DB_connection;

import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class ProblemDaoImp implements ProblemDao {

    @Override
    public boolean add_problem(String p_content, Timestamp date, Integer uno) {
        return DB_connection.update("insert into problem (p_content,p_date,author_no,ans_num) values (?,?,?,?)",
                p_content, date, uno,0);
    }

    @Override
    public boolean delete_problem(Integer pno) {
        return DB_connection.update("delete from problem where pno = ?", pno);
    }


    @Override
    public List<Problem> get_all_problems() {
        List<Problem> res = new ArrayList<Problem>();
        ResultSet resultSet = DB_connection.query("select * from problem_view");
        try {
            while (resultSet.next()) {
                Problem tmp = new Problem(resultSet.getInt("pno"),
                        resultSet.getString("p_content"),
                        resultSet.getDate("p_date"),
                        resultSet.getInt("author_no"),
                        resultSet.getString("author_name"),
                        resultSet.getInt("ans_num"));
                res.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }

    @Override
    public Problem get_problem_detail(Integer pno) {
        Problem res = get_problem_by_pno(pno);

        ResultSet resultSet = DB_connection.query("select * from answer where pno = ?", res.getPno());
        List<Answer> answers = new ArrayList<Answer>();

        try {
            while (resultSet.next()) {
                Answer tmp = new Answer(resultSet.getInt("ano"),
                        resultSet.getInt("author_no"),
                        resultSet.getInt("pno"),
                        resultSet.getString("a_content"),
                        resultSet.getDate("a_date"));
                answers.add(tmp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (answers.size() != 0)
                res.setAnswer_list(answers);
        }
        return res;
    }

    @Override
    public Problem get_problem_by_pno(Integer pno) {
        Problem res = null;
        ResultSet resultSet = DB_connection.query("select * from problem_view where pno = ?", pno);
        try {
            if (resultSet.next()) {
                res = new Problem(resultSet.getInt("pno"),
                        resultSet.getString("p_content"),
                        resultSet.getDate("p_date"),
                        resultSet.getInt("author_no"),
                        resultSet.getString("author_name"),
                        resultSet.getInt("ans_num"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return res;
    }


}

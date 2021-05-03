package edu.xmuter.dao;

import edu.xmuter.bean.Problem;

import java.sql.Timestamp;
import java.util.List;

public interface ProblemDao {

    public boolean add_problem(String p_content, Timestamp date, Integer uno);

    public boolean delete_problem(Integer pno);


    public List<Problem> get_all_problems();

    public Problem get_problem_detail(Integer pno);

    public Problem get_problem_by_pno(Integer pno);

}



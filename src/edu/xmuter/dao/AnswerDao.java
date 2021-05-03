package edu.xmuter.dao;

import edu.xmuter.bean.Answer;

import java.util.List;

public interface AnswerDao {
    public boolean add_answer(Answer ans);

    public List<Answer> get_all_answer(Integer pno);



}

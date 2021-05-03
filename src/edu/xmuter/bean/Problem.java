package edu.xmuter.bean;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Problem {
    private Integer pno;
    private String p_content;
    private Date p_date;
    private Integer author_no;
    //author name
    private String author_name;

    private List<Answer> answer_list;


    private Integer ans_num;//the number of answer

    public Problem(Integer pno, String p_content, Date p_date, Integer author_no, String author_name, Integer ans_num) {
        this.pno = pno;
        this.p_content = p_content;
        this.p_date = p_date;
        this.author_no = author_no;
        this.author_name = author_name;
        this.ans_num = ans_num;
        answer_list = new ArrayList<Answer>();
    }

    public Problem(Integer pno, String p_content, Date p_date, Integer author_no, Integer ans_num) {
        this.pno = pno;
        this.p_content = p_content;
        this.p_date = p_date;
        this.author_no = author_no;
        this.ans_num = ans_num;
        answer_list = new ArrayList<Answer>();
    }

    public Problem() {
        answer_list = new ArrayList<Answer>();
    }

    public Problem(String p_content, Date p_date, Integer author_no, Integer ans_num) {
        this.p_content = p_content;
        this.p_date = p_date;
        this.author_no = author_no;
        this.ans_num = ans_num;
        answer_list = new ArrayList<Answer>();
    }


    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public Integer getPno() {
        return pno;
    }

    public void setPno(Integer pno) {
        this.pno = pno;
    }

    public String getP_content() {
        return p_content;
    }

    public void setP_content(String p_content) {
        this.p_content = p_content;
    }

    public Date getP_date() {
        return p_date;
    }

    public void setP_date(Date p_date) {
        this.p_date = p_date;
    }

    public Integer getAuthor_no() {
        return author_no;
    }


    public List<Answer> getAnswer_list() {
        return answer_list;
    }

    public void setAnswer_list(List<Answer> answer_list) {
        this.answer_list = answer_list;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }

    public Integer getAns_num() {
        return ans_num;
    }

    public void setAns_num(Integer ans_num) {
        this.ans_num = ans_num;
    }
}

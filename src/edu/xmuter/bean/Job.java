package edu.xmuter.bean;

import java.sql.Date;

public class Job {


    private Integer jno;
    private String j_name;
    private String j_content;
    private Date j_date;
    private Integer author_no;


    public Job(Integer jno, String j_name, String j_content, Date j_date, Integer author_no) {
        this.jno = jno;
        this.j_name = j_name;
        this.j_content = j_content;
        this.j_date = j_date;
        this.author_no = author_no;
    }


    public Job(String j_name, String j_content, Date j_date, Integer author_no) {
        this.j_name = j_name;
        this.j_content = j_content;
        this.j_date = j_date;
        this.author_no = author_no;
    }

    public Job() {
    }


    public Integer getJno() {
        return jno;
    }

    public void setJno(Integer jno) {
        this.jno = jno;
    }

    public String getJ_name() {
        return j_name;
    }

    public void setJ_name(String j_name) {
        this.j_name = j_name;
    }

    public String getJ_content() {
        return j_content;
    }

    public void setJ_content(String j_content) {
        this.j_content = j_content;
    }

    public Date getJ_date() {
        return j_date;
    }

    public void setJ_date(Date j_date) {
        this.j_date = j_date;
    }

    public Integer getAuthor_no() {
        return author_no;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }
}

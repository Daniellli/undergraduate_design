package edu.xmuter.bean;


import java.sql.Date;

/*
 * according to complaint_info in mysql database
 *
 * */
public class Complaint {
    private Integer cno;
    private String c_content;
    private Date date;
    private Integer author_no;


    public Complaint(Integer cno, String c_content, Date date, Integer author_no) {
        this.cno = cno;
        this.c_content = c_content;
        this.date = date;
        this.author_no = author_no;
    }

    public Complaint(String c_content, Date date, Integer author_no) {
        this.c_content = c_content;
        this.date = date;
        this.author_no = author_no;
    }

    public Complaint() {
    }

    public Integer getCno() {
        return cno;
    }

    public void setCno(Integer cno) {
        this.cno = cno;
    }

    public String getC_content() {
        return c_content;
    }

    public void setC_content(String c_content) {
        this.c_content = c_content;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Integer getAuthor_no() {
        return author_no;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }
}

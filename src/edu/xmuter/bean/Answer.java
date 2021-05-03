package edu.xmuter.bean;

import java.sql.Date;

public class Answer {
    private Integer ano;
    private  Integer author_no;
    private  Integer pno;
    private  String a_content;
    private Date a_date;
    private String author_name;



    public Answer(Integer ano, Integer author_no, Integer pno, String a_content, Date a_date, String author_name) {
        this.ano = ano;
        this.author_no = author_no;
        this.pno = pno;
        this.a_content = a_content;
        this.a_date = a_date;
        this.author_name = author_name;
    }

    public Answer(Integer ano, Integer author_no, Integer pno, String a_content, Date a_date) {
        this.ano = ano;
        this.author_no = author_no;
        this.pno = pno;
        this.a_content = a_content;
        this.a_date = a_date;

    }

    public Answer(Integer author_no, Integer pno, String a_content, Date a_date) {
        this.author_no = author_no;
        this.pno = pno;
        this.a_content = a_content;
        this.a_date = a_date;
    }

    public Answer() {
    }


    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public Integer getAno() {
        return ano;
    }

    public void setAno(Integer ano) {
        this.ano = ano;
    }

    public Integer getAuthor_no() {
        return author_no;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }

    public Integer getPno() {
        return pno;
    }

    public void setPno(Integer pno) {
        this.pno = pno;
    }

    public String getA_content() {
        return a_content;
    }

    public void setA_content(String a_content) {
        this.a_content = a_content;
    }

    public Date getA_date() {
        return a_date;
    }

    public void setA_date(Date a_date) {
        this.a_date = a_date;
    }

    @Override
    public String toString() {

        return "content = "+a_content+"  data = "+a_date;
    }
}

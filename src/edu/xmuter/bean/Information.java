package edu.xmuter.bean;

import java.sql.Date;

/*
 * according to compus_info
 * */
public class Information {

    private Integer info_no;
    private String info_content;
    private Date info_date;
    private Integer author_no;

    public Information(Integer info_no, String info_content, Date info_date, Integer author_no) {
        this.info_no = info_no;
        this.info_content = info_content;
        this.info_date = info_date;
        this.author_no = author_no;
    }

    public Information(String info_content, Date info_date, Integer author_no) {
        this.info_content = info_content;
        this.info_date = info_date;
        this.author_no = author_no;
    }

    public Information() {
    }

    public Integer getInfo_no() {
        return info_no;
    }

    public void setInfo_no(Integer info_no) {
        this.info_no = info_no;
    }

    public String getInfo_content() {
        return info_content;
    }

    public void setInfo_content(String info_content) {
        this.info_content = info_content;
    }

    public Date getInfo_date() {
        return info_date;
    }

    public void setInfo_date(Date info_date) {
        this.info_date = info_date;
    }

    public Integer getAuthor_no() {
        return author_no;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }
}

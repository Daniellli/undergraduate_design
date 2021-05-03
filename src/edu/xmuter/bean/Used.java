package edu.xmuter.bean;

import java.sql.Date;

public class Used {
    private Integer used_no;
    private String used_name;
    private String used_desc;
    private Double price;
    private String img_address;
    private Date used_date;
    private Integer author_no;
    private String author_name;
    private String telephone;

    public Used(Integer used_no, String used_name, String used_desc, Double price, String img_address, Date used_date, Integer author_no, String author_name, String telephone) {
        this.used_no = used_no;
        this.used_name = used_name;
        this.used_desc = used_desc;
        this.price = price;
        this.img_address = img_address;
        this.used_date = used_date;
        this.author_no = author_no;
        this.author_name = author_name;
        this.telephone = telephone;
    }

    public Used(Integer used_no, String used_name, String used_desc, Double price, String img_address, Date used_date, Integer author_no, String author_name) {
        this.used_no = used_no;
        this.used_name = used_name;
        this.used_desc = used_desc;
        this.price = price;
        this.img_address = img_address;
        this.used_date = used_date;
        this.author_no = author_no;
        this.author_name = author_name;
    }

    public Used(Integer used_no, String used_name, String used_desc, Double price, String img_address, Date used_date, Integer author_no) {
        this.used_no = used_no;
        this.used_name = used_name;
        this.used_desc = used_desc;
        this.price = price;
        this.img_address = img_address;
        this.used_date = used_date;
        this.author_no = author_no;
    }

    public Used(String used_name, String used_desc, Double price, String img_address, Date used_date, Integer author_no) {
        this.used_name = used_name;
        this.used_desc = used_desc;
        this.price = price;
        this.img_address = img_address;
        this.used_date = used_date;
        this.author_no = author_no;
    }

    public Used() {
    }


    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAuthor_name() {
        return author_name;
    }

    public void setAuthor_name(String author_name) {
        this.author_name = author_name;
    }

    public String getImg_address() {
        return img_address;
    }

    public void setImg_address(String img_address) {
        this.img_address = img_address;
    }

    public Integer getUsed_no() {
        return used_no;
    }

    public void setUsed_no(Integer used_no) {
        this.used_no = used_no;
    }

    public String getUsed_name() {
        return used_name;
    }

    public void setUsed_name(String used_name) {
        this.used_name = used_name;
    }

    public String getUsed_desc() {
        return used_desc;
    }

    public void setUsed_desc(String used_desc) {
        this.used_desc = used_desc;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getUsed_date() {
        return used_date;
    }

    public void setUsed_date(Date used_date) {
        this.used_date = used_date;
    }

    public Integer getAuthor_no() {
        return author_no;
    }

    public void setAuthor_no(Integer author_no) {
        this.author_no = author_no;
    }
}

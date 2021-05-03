package edu.xmuter.bean;


public class User {
    private Integer uno;
    private String u_id;
    private String pwd;
    private String name;
    private String secure_problem;
    private String secure_answer;
    private String telephone;

    public User(Integer uno, String u_id, String pwd, String name, String secure_problem, String secure_answer, String telephone) {
        this.uno = uno;
        this.u_id = u_id;
        this.pwd = pwd;
        this.name = name;
        this.secure_problem = secure_problem;
        this.secure_answer = secure_answer;
        this.telephone = telephone;
    }

    public User(Integer uno, String u_id, String pwd, String name, String secure_problem, String secure_answer) {
        this.uno = uno;
        this.u_id = u_id;
        this.pwd = pwd;
        this.name = name;
        this.secure_problem = secure_problem;
        this.secure_answer = secure_answer;
    }

    public User(String u_id, String pwd, String name, String secure_problem, String secure_answer) {
        this.u_id = u_id;
        this.pwd = pwd;
        this.name = name;
        this.secure_problem = secure_problem;
        this.secure_answer = secure_answer;
    }

    public User() {
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public Integer getUno() {
        return uno;
    }

    public void setUno(Integer uno) {
        this.uno = uno;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSecure_problem() {
        return secure_problem;
    }

    public void setSecure_problem(String secure_problem) {
        this.secure_problem = secure_problem;
    }

    public String getSecure_answer() {
        return secure_answer;
    }

    public void setSecure_answer(String secure_answer) {
        this.secure_answer = secure_answer;
    }
}

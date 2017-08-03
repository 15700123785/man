package com.moke.vo;

public class IdcardInfVo {
    private Integer id;//主键

    private String name;//姓名

    private String sex;//性别

    private String nation;//民族

    private String id_no;//身份证号

    private String birthday;//生日

    private String address;//户籍地址

    private String issue_org;//签发机关

    private String begin_date;//有效时间起

    private String end_date;//有效时间止

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation == null ? null : nation.trim();
    }

    public String getIdNo() {
        return id_no;
    }

    public void setIdNo(String id_No) {
        this.id_no = id_no == null ? null : id_no.trim();
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday == null ? null : birthday.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getIssueOrg() {
        return issue_org;
    }

    public void setIssueOrg(String issue_Org) {
        this.issue_org = issue_org == null ? null : issue_org.trim();
    }

    public String getBeginDate() {
        return begin_date;
    }

    public void setBeginDate(String beginDate) {
        this.begin_date = begin_date == null ? null : begin_date.trim();
    }

    public String getEndDate() {
        return end_date;
    }

    public void setEndDate(String endDate) {
        this.end_date = end_date == null ? null : end_date.trim();
    }
}
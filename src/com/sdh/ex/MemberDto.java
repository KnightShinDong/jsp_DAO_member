package com.sdh.ex;

import java.sql.Timestamp;

public class MemberDto {

    private String id;
    private String pw;
    private String name;
    private String email;
    private Timestamp rDate;
    private String address;

//    public MemberDto(String id, String pw, String name, String email, Timestamp rDate, String address) {
//        this.id = id;
//        this.pw = pw;
//        this.name = name;
//        this.email = email;
//        this.rDate = rDate;
//        this.address = address;
//    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Timestamp getrDate() {
        return rDate;
    }

    public void setrDate(Timestamp rDate) {
        this.rDate = rDate;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}

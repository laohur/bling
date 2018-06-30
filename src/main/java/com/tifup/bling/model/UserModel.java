package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class UserModel implements Serializable {
    private static final long serialVersionUID = 1L;

    public UserModel(Date intime, Date ontime, int status, String username, String password, String email, String mobile, String roles, String photo) {
        this.intime = intime;
        this.ontime = ontime;
        this.status = status;
        this.username = username;
        this.password = password;
        this.email = email;
        this.mobile = mobile;
        this.roles = roles;
        this.photo = photo;
    }
    public UserModel(){ super(); }
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }
    public Date getIntime() {
        return intime;
    }

    public void setIntime(Date intime) {
        this.intime = intime;
    }

    public Date getOntime() {
        return ontime;
    }

    public void setOntime(Date ontime) {
        this.ontime = ontime;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getRoles() {
        return roles;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }
    public boolean hasRole(String role){
        if(-1== this.getRoles().indexOf(role))  return false;
        else  return true;
    }
    //usr_id intime ontime status username password email mobile roles photo
    int user_id;
    Date intime;
    Date ontime;
    int status;
    String username;
    String password;
    String email;
    String mobile;
    String roles;
    String photo;
}

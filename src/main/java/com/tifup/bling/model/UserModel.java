package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class UserModel implements Serializable {
    private static final long serialVersionUID = 1L;

    int client_id;
    Date intime;
    Date ontime;
    Date verify_time;
    int status;
    String username;
    String password;
    String email;
    String mobile;
    String roles;
    String photo;
}

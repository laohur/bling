package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class OrderModel implements Serializable {
    private static final long serialVersionUID = 1L;

    int order_id;
    Date intime;
    Date ontime;
    int client_id;
    int pay_id;
    int shipping_id;
    int status;
    int total_price;
    String basket;
    String receiver;
    String phone;
    String destination;
}

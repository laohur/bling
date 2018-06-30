package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class OrderModel implements Serializable {
    private static final long serialVersionUID = 1L;

    public OrderModel(Date intime, Date ontime, int client_id, int pay_id, int shipping_id, int status, int total_price, String basket, String receiver, String phone, String destination) {
        this.intime = intime;
        this.ontime = ontime;
        this.client_id = client_id;
        this.pay_id = pay_id;
        this.shipping_id = shipping_id;
        this.status = status;
        this.total_price = total_price;
        this.basket = basket;
        this.receiver = receiver;
        this.phone = phone;
        this.destination = destination;
    }
    public OrderModel(){ super();  }

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

    public int getClient_id() {
        return client_id;
    }

    public void setClient_id(int client_id) {
        this.client_id = client_id;
    }

    public int getPay_id() {
        return pay_id;
    }

    public void setPay_id(int pay_id) {
        this.pay_id = pay_id;
    }

    public int getShipping_id() {
        return shipping_id;
    }

    public void setShipping_id(int shipping_id) {
        this.shipping_id = shipping_id;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getTotal_price() {
        return total_price;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public String getBasket() {
        return basket;
    }

    public void setBasket(String basket) {
        this.basket = basket;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    //order_id intime ontime client_id pay_id shipping_id status total_price basket receiver phone destination
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

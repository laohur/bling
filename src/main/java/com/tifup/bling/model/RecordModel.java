package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class RecordModel implements Serializable {
    private static final long serialVersionUID = 1L;

    public RecordModel(int user_id, int item_id, int order_id, Date time, int action) {
        this.user_id = user_id;
        this.item_id = item_id;
        this.order_id = order_id;
        this.time = time;
        this.action = action;
    }
    public RecordModel(){ super();  }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getAction() {
        return action;
    }

    public void setAction(int action) {
        this.action = action;
    }
    //record_id user_id item_id order_id time action
    int record_id;
    int user_id;
    int item_id;
    int order_id;
    Date time;
    int action;
}

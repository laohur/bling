package com.tifup.bling.model;

import java.io.Serializable;
import java.util.Date;

public class RecordModel implements Serializable {
    private static final long serialVersionUID = 1L;

    int record_id;
    int user_id;
    int item_id;
    int order_id;
    Date time;
    int action;
}

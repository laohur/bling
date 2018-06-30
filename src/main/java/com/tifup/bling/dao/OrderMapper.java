package com.tifup.bling.dao;

import com.tifup.bling.model.OrderModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface OrderMapper {
    //intime,ontime,client_id,pay_id,shipping_id,status,total_price,basket,receiver,phone,destination

    @Insert(" INSERT INTO order( intime,ontime,client_id,pay_id,shipping_id,status,total_price,basket,receiver,phone,destination ) +" +
            "values ( #{intime}, #{ontime}, #{client_id}, #{pay_id}, #{shipping_id}, #{status}, #{total_price}, #{basket}, #{receiver}, #{phone}, #{destination}, ) ")
    @Options(useGeneratedKeys = true, keyProperty = "order_id", keyColumn = "order_id")
    int insert(OrderModel orderModel);

}

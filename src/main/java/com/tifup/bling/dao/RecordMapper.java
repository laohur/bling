package com.tifup.bling.dao;

import com.tifup.bling.model.RecordModel;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface RecordMapper {
    @Insert(" INSERT INTO record (user_id,item_id,order_id,time,action)" +
            "values ( #{user_id}, #{item_id}, #{order_id}, #{time}, #{action} )  ")
    @Options(useGeneratedKeys = true, keyProperty = "record_id", keyColumn = "record_id")
    public int insert(RecordModel recordModel);
}

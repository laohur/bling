package com.tifup.bling.dao;

import com.tifup.bling.model.ItemModel;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Service;

import java.util.List;

@Mapper
public interface ItemMapper {
    @Select(" SELECT * FROM item WHERE item_id=#{item_id} ")
    ItemModel get(int item_id);

    @Select(" SELECT * FROM item ")
    List<ItemModel> getAll();

    @Insert(" INSERT INTO item(product_id,intime,ontime,size,color,length,width,height,heavy,price,inventory,status,scaling,x,y,name,title,image_id) +" +
            "values (#{product_id},#{intime},#{ontime},#{size},#{color},#{length},#{width},#{height},#{heavy},#{price},#{inventory},#{status},#{scaling},#{x},#{y},#{name},#{title},#{image_id}) ")
    int add(ItemModel itemModel);

    @Delete(" DELETE * FROM item WHERE item_id=#{item_id ")
    int del(int item_id);

    @Update(" UPDATE item SET (product_id=#{product_id},intime=#{intime},ontime=#{ontime},size=#{size},color=#{color},length=#{length},width=#{width},height=#{height},heavy=#{heavy},price=#{price},inventory=#{inventory},status=#{status},scaling=#{scaling},x=#{x},y=#{y},name=#{name},title=#{title},image_id=#{image_id}) + " +
            "WHERE item_id=#{item_id}  ")
    int modify(ItemModel itemModel);


}

package com.tifup.bling.dao;

import com.tifup.bling.model.ItemModel;
import org.apache.ibatis.annotations.*;
import java.util.List;

@Mapper
public interface ItemMapper {
    @Select(" SELECT * FROM item WHERE item_id=#{item_id} ")
    ItemModel get(int item_id);

    @Select(" SELECT * FROM item ORDER BY ontime DESC LIMIT 100 ")
    List<ItemModel> getAll();

    @Select(" SELECT * FROM item WHERE title likes #{keyword}  ORDER BY ontime DESC LIMIT 100 ")
    List<ItemModel> search( String keyword);

    //item_id,product_id,category_id,intime,ontime,price,inventory,status,name,title,brand,image,description
    @Insert(" INSERT INTO item( product_id,category_id,intime,ontime,price,inventory,status,name,title,brand,image,description ) +" +
            "values ( #{item_id},#{product_id},#{category_id},#{intime},#{ontime},#{price},#{inventory},#{status},#{name},#{title},#{brand},#{image},#{description} ) ")
    @Options(useGeneratedKeys = true, keyProperty = "item_id", keyColumn = "item_id")
    int insert(ItemModel itemModel);
//    @Delete(" DELETE * FROM item WHERE item_id=#{item_id ")
//    int del(int item_id);

    @Update(" UPDATE item SET ( product_id=#{product_id}, category_id=#{category_id}, intime=#{intime}, ontime=#{ontime}, price=#{price}, inventory=#{inventory}, status=#{status}, name=#{name}, title=#{title}, brand=#{brand}, image=#{image}, description=#{description}, ) + " +
            "WHERE item_id=#{item_id}  ")
    int update(ItemModel itemModel);

//    @Select(  " SELECT item ")
//    int topId();
}

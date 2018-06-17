package com.tifup.bling.service;

import com.tifup.bling.dao.ItemMapper;
import com.tifup.bling.model.ItemModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemService {
    @Autowired
    public ItemMapper itemMapper;

    //    public ItemModel itemModel;
//    ItemService(ItemMapper itemMapper){
//        this.itemMapper=itemMapper;
//    }
    public ItemModel get(int item_id) {
        return itemMapper.get(item_id);
    }

    public List<ItemModel> getAll() {
        return itemMapper.getAll();
    }

    public int del(int item_id) {
        return itemMapper.del(item_id);
    }

    public int add(ItemModel itemModel) {
        return itemMapper.add(itemModel);
    }

    public int modify(ItemModel itemModel) {
        return itemMapper.modify(itemModel);
    }

}

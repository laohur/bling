package com.tifup.bling.service;

import com.tifup.bling.dao.ItemMapper;
import com.tifup.bling.model.ItemModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
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

    public List<ItemModel> search(String keyword) {
        return itemMapper.search( keyword);
    }

    public int insert(ItemModel itemModel) {
        itemModel.setIntime(new Date());
        itemModel.setOntime(new Date());
        return itemMapper.insert(itemModel);
    }

    public int update(ItemModel itemModel) {
        return itemMapper.update(itemModel);
    }

}

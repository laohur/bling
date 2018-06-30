package com.tifup.bling.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tifup.bling.dao.ItemMapper;
import com.tifup.bling.dao.UserMapper;
import com.tifup.bling.model.ItemModel;
import com.tifup.bling.model.UserModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;


@Service
public class UserService {
    @Autowired
    public UserMapper userMapper;
    ObjectMapper objectMapper=new ObjectMapper();

    public int findName(String username){ return userMapper.findName(username); }

    public int countName(String username){ return userMapper.countName(username); }

    public UserModel get(int user_id) {  return userMapper.get(user_id);  }
    public int insert(UserModel userModel) throws Exception {
        userModel.setIntime(new Date());
        userModel.setOntime(new Date());
        userModel.setRoles("client");
        userModel.setStatus(1);
        userModel.setRoles("client");
        userModel.setPhoto("/img");
        System.out.println("userService before insert"+objectMapper.writeValueAsString(userModel));
        int user_id=userMapper.insert(userModel);
        //userModel.setUser_id(user_id);
        System.out.println("userService after insert"+objectMapper.writeValueAsString(userModel));
        return user_id;
    }
//status,username,password,email,mobile,roles,photo
//    public List<ItemModel> getAll() {
//        return itemMapper.getAll();
//    }
//
//    public List<ItemModel> search(String keyword) {
//        return itemMapper.search( keyword);
//    }
//
//    public int insert(ItemModel itemModel) {
//        return itemMapper.insert(itemModel);
//    }
//
//    public int update(ItemModel itemModel) {
//        return itemMapper.update(itemModel);
//    }

}

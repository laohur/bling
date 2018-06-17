package com.tifup.bling.controller;

import com.tifup.bling.dao.ItemMapper;
import com.tifup.bling.model.ItemModel;
import com.tifup.bling.service.ItemService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ItemController {
    public ItemService itemService;
    public ItemModel itemModel;

    ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping("/api/item/all")
    @ResponseBody
    public List<ItemModel> getAll() {
        return itemService.getAll();
    }

    @GetMapping("/api/item/{item_id}")
    @ResponseBody
    public ItemModel get(@PathVariable int item_id) {
        return itemService.get(item_id);
    }

    @GetMapping("/item/{item_id}")
    public String get(Model model, @PathVariable int item_id) {
        ItemModel itemModel = itemService.get(item_id);
//        System.out.println(itemModel.getImage_id());
        model.addAttribute("item", itemModel);
        System.out.println("42 itemController@get ");
        return "item";
    }

    @PostMapping("/admin/item/del/{item_id}")
    public int del(@PathVariable int item_id) {
        return itemService.del(item_id);
    }

    @PostMapping("/admin/item/add")
    public int add(ItemModel itemModel) {

        return itemService.add(itemModel);
    }
}

package com.tifup.bling.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.tifup.bling.model.ItemModel;
import com.tifup.bling.model.UserModel;
import com.tifup.bling.service.ItemService;
import com.tifup.bling.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
public class ItemController {
    public ItemService itemService;
    public ItemModel itemModel;
    public UserService userService;
    public UserModel userModel;
    ObjectMapper objectMapper=new ObjectMapper();

    ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @GetMapping(value="/api/item/all")
    @ResponseBody
    public List<ItemModel> getAll() {
        return itemService.getAll();
    }

    @GetMapping("/api/search/{keyword}}")
    @ResponseBody
    public List<ItemModel> search(@PathVariable String keyword) {
        return itemService.search(keyword);
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
        System.out.println("42 itemController@get 查找 item_id"+item_id);
        return "item";
    }

    @GetMapping("/")
    public String Index(HttpServletRequest request,HttpServletResponse response,Model model) throws JsonProcessingException {
        List<ItemModel> itemList = itemService.getAll();
        String itemsString=objectMapper.writeValueAsString(itemList);
        model.addAttribute("itemList", itemList);
        Cookie cookie=new Cookie("itemList",itemsString);
        //cookie.setMaxAge(60*60*24*7);
        cookie.setPath("/");
        response.addCookie(new Cookie("foo", "bar"));
//        response.addCookie(cookie);
        System.out.println(" itemController@Index itemsString "+itemsString);
        return "index";
    }

    @GetMapping("/item/add")
    public String add(Model model) {
        System.out.println(" itemController@add ");
        return "item.add";
    }

    @PostMapping("/item/insert")
    public String insert(ItemModel itemModel,Model model) {
        if(!userModel.hasRole("admin")) return "/index";
        //ItemModel itemModel=new ItemModel();
        //itemModel.setCategory_id(request.getParameter("category_id"));

        itemService.insert(itemModel);
        System.out.println("get itemController@modify ");
        return "redicrect:/item/{itemModel.getItem_id()}";
    }

    @GetMapping("/item/{item_id}/modify")
    public String modify(@PathVariable int item_id) {

        System.out.println("get itemController@modify ");
        return "/item/modify";
    }

    @PostMapping("/item//{item_id}/update")
    public String update(@PathVariable int item_id) {
        ItemModel itemModel = null;
        itemService.update(itemModel);
        System.out.println("get itemController@modify ");
        return "redicrect:/item/{item_id}";
    }
    @PostMapping("/item/photp")
    public String  uploadImage(@RequestParam("photo")MultipartFile file) throws Exception {
        //System.out.println("userController post insert"+objectMapper.writeValueAsString(userModel));
        if(file.isEmpty())         return "redicrect:/item/{item_id}";
        byte[] bytes=file.getBytes();
        Path path= Paths.get("/src/main/resources/static/dimages/"+itemModel.getItem_id()+".png");
        Files.write(path,bytes);
//        return "redirect :/api/user/{user_id}";
        return "redicrect:/item/{item_id}";

    }
}

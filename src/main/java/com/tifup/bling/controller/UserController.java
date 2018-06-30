package com.tifup.bling.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tifup.bling.model.UserModel;
import com.tifup.bling.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Date;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    public UserService userService;
    public UserModel userModel;
    ObjectMapper objectMapper=new ObjectMapper();
    UserController(UserService userService) {
        this.userService = userService;
    }


    @GetMapping("/api/user/{user_id}")
    @ResponseBody
    public UserModel search(@PathVariable int  user_id ) {
        return userService.get(user_id);
    }

    @GetMapping("/user/{user_id}")
    public String get(Model model,@PathVariable int user_id){
        UserModel userModel=userService.get(user_id);
        model.addAttribute("user",userModel);
        System.out.println("/user/"+user_id);
        return "user";
    }

    @GetMapping("/user")
    public String uesr(){
        //System.out.println("get user");
        return "user";
    }

    @PostMapping("/user/register")
    public String insert(UserModel userModel,Model model) throws Exception {
        //System.out.println("userController post insert"+objectMapper.writeValueAsString(userModel));
        int user_id=userService.insert(userModel);
        model.addAttribute("user",userModel);
        return "redirect:/user";
//        return "redirect :/api/user/{user_id}";
    }

    @PostMapping("/user/photp")
    public String uploadtPhoto(@RequestParam("photo")MultipartFile file) throws Exception {
        System.out.println("上传头像"+file.getOriginalFilename());
        if(file.isEmpty()) return "redirect:/user";
        byte[] bytes=file.getBytes();
        Path path= Paths.get("/src/main/resources/static/photo/"+userModel.getUser_id()+".png");
        Files.write(path,bytes);
        return  "redirect:/user";
    }

    @GetMapping("/api/countName/{username}")
    @ResponseBody
    public int countName( String username ){ return userService.countName(username); }

    @PostMapping("/user/login")
    public String login(HttpServletRequest request, Model model){
        HttpSession session=request.getSession();
        if(session.getAttribute("username")!=null);
        String username=request.getParameter("username");
        String pasword=request.getParameter("password");
        if( userService.countName(username)!=1 )  {
            model.addAttribute("msg","用户名称错误,查的用户数为"+userService.countName(username));
            return  "redirect:/user";
        }
        userModel=userService.get(userService.findName(username));
        if(!userModel.getPassword().equals(pasword)){
            model.addAttribute("msg","密码错误");
            return  "redirect:/user";
        }
        session.setAttribute("username",username);
        session.setAttribute("user",userModel);
        model.addAttribute("user",userModel);
        System.out.println("session "+session.toString());
        return  "redirect:/user";
    }

    @RequestMapping("/user/logout")
    public String logout(HttpServletRequest request, HttpServletResponse response,Model model){
        Cookie usernameCookie=new Cookie("username","");
        usernameCookie.setMaxAge(0);
        usernameCookie.setPath("/");
        response.addCookie(usernameCookie);
        request.getSession().removeAttribute("username");
        model.addAttribute("msg","已登出");
        return "redirect:/user";
    }

}

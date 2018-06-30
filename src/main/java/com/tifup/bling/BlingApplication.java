package com.tifup.bling;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

//
//@SpringBootApplication
//public class BlingApplication {
//
//    public static void main(String[] args) {
//        SpringApplication.run(BlingApplication.class, args);
//    }
//}
//@ComponentScan(basePackages = {"com.tifup.bling.model"})
//@ComponentScan("com.tifup.bling.controller")//包名
@SpringBootApplication
public class BlingApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(BlingApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(BlingApplication.class, args);
    }

}

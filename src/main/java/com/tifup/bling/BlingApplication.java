package com.tifup.bling;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

//
//@SpringBootApplication
//public class BlingApplication {
//
//    public static void main(String[] args) {
//        SpringApplication.run(BlingApplication.class, args);
//    }
//}
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

package com.myflux;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class MyFluxApplication {

    public static void main(String[] args) {
        // 设置服务启动为reactive类型
        SpringApplication app = new SpringApplication(MyFluxApplication.class);
        app.setWebApplicationType(WebApplicationType.REACTIVE);
        app.run(args);
    }
}

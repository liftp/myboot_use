package com.hch.nacostest;

import com.alibaba.nacos.spring.context.annotation.config.NacosPropertySource;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@NacosPropertySource(dataId = "nacostest", autoRefreshed = true)
public class NacosTestApplication {

    public static void main(String[] args) {
        SpringApplication.run(NacosTestApplication.class, args);
    }

}

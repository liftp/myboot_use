package com.hch.testredis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestRedis {

    @Autowired
    private RedisTemplate redisTemplate;

    @GetMapping("test")
    public void test() {
        Object o = redisTemplate.opsForValue().get("test");
        System.out.println(1);
    }
}

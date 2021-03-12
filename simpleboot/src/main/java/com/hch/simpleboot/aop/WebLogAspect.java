package com.hch.simpleboot.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class WebLogAspect {

    public static final Logger LOGGER = LoggerFactory.getLogger(WebLogAspect.class);

    @Pointcut(value = "execution(public String helloAop (..) )")
    public void cutOffPoint() {

    }

    @Pointcut("execution(public * com.hch.simpleboot..*.* (..))")
    public void cutPoint() {

    }

    @Before("cutOffPoint()")
    public void beforeTest() {
        LOGGER.info("test before ....");
    }

    @After(value = "cutPoint()")
    public void afterTest() {
        LOGGER.info("after laile....");
    }

    @AfterReturning(returning = "obj", pointcut = "cutPoint()")
    public void doAfterReturning(JoinPoint joinPoint, Object obj) {
        LOGGER.info("AfterReturning... {}, {}", joinPoint.getArgs(), obj);
    }

    @AfterThrowing(throwing = "e", pointcut = "cutPoint()")
    public void doAfterThrowing(Throwable e) {
        LOGGER.error("error info ", e);
    }
}

package com.hch.simpleboot.es.controller;

import com.hch.simpleboot.html2pdf.ITextToPdfUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController("test")
public class TestController {


    @GetMapping("html2pdf")
    public String html2pdf() {
        String DEST = "E:\\javaPro\\sso_test\\doc\\my.pdf";
        String HTML = "test.html";
        Map<String, Object> data = new HashMap<>();
        String content = ITextToPdfUtil.htmlRender(data, HTML);
        try {
            ITextToPdfUtil.createPdf(content, DEST);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "ok";
    }

    @GetMapping("HelloAop")
    public String helloAop() {
        return "hello Aop";
    }


}

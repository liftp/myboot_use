package com.hch.simpleboot.es.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import java.net.URL;

public class JsoupUtil {

    public static void main(String[] args) throws IOException {
        // 获取请求 https://search.jd.com/Search?keyword=%E5%B0%8F%E7%B1%B3&enc=utf-8&wq=%E5%B0%8F%E7%B1%B3&pvid=f6c34a77a15a4e3f99d64296bbe5b831
        String url = "https://search.jd.com/Search?keyword=%E5%B0%8F%E7%B1%B3&enc=utf-8&wq=%E5%B0%8F%E7%B1%B3&pvid=f6c34a77a15a4e3f99d64296bbe5b831";
        // 返回的就是js的document的对象
        Document doc = Jsoup.parse(new URL(url), 30000);
        doc.getElementById("...");




    }
}

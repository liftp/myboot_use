package com.hch.simpleboot.es.controller;

import org.elasticsearch.client.RestHighLevelClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class TestEs {

    @Autowired
    @Qualifier("client")
    private RestHighLevelClient client;
}

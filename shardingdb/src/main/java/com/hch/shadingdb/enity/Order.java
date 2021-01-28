package com.hch.shadingdb.enity;

import lombok.Data;

@Data
public class Order {

    private Long orderId;
    private Long userId;
    private String details;

    public Order() {}

    public Order(Long userId, String details) {
        this.userId = userId;
        this.details = details;
    }
}

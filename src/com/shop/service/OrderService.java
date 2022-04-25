package com.shop.service;

import com.shop.entity.Cart;

public interface OrderService {
    public String createOrder(Cart cart, Integer userId);
}

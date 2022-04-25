package com.shop.service;


import com.shop.entity.Good;

import java.util.List;

public interface GoodService {


    public void updateBook(Good book);

    public Good queryBookById(Integer id);

    public List<Good> queryBooks();

}

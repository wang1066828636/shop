package com.shop.service.impl;

import com.shop.dao.GoodDao;
import com.shop.dao.impl.GoodDaoImpl;
import com.shop.entity.Good;
import com.shop.service.GoodService;

import java.util.List;

public class GoodServiceImpl implements GoodService {

    private GoodDao goodDao = new GoodDaoImpl();


    @Override
    public void updateBook(Good book) {
        goodDao.updateBook(book);
    }

    @Override
    public Good queryBookById(Integer id) {
        return goodDao.queryBookById(id);
    }

    @Override
    public List<Good> queryBooks() {
        return goodDao.queryBooks();
    }

}

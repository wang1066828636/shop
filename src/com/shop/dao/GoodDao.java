package com.shop.dao;

import com.shop.entity.Good;

import java.util.List;

public interface GoodDao {

    public int updateBook(Good good);

    public Good queryBookById(Integer id);

    public List<Good> queryBooks();

    Integer queryForPageTotalCount();

    List<Good> queryForPageItems(int begin, int pageSize);

    Integer queryForPageTotalCountByPrice(int min, int max);

    List<Good> queryForPageItemsByPrice(int begin, int pageSize, int min, int max);
}

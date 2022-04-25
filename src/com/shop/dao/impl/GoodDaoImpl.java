package com.shop.dao.impl;

import com.shop.dao.GoodDao;
import com.shop.entity.Good;

import java.util.List;

public class GoodDaoImpl extends BaseDao implements GoodDao {

    @Override
    public int updateBook(Good good) {
        String sql = "update t_good set `name`=?,`author`=?,`price`=?,`sales`=?,`stock`=?,`img_path`=? where id = ?";
        return update(sql,good.getName(),good.getAuthor(),good.getPrice(),good.getSales(),good.getStock(),good.getImgPath(),good.getId());
    }

    @Override
    public Good queryBookById(Integer id) {
        String sql = "select `id` , `name` , `author` , `price` , `sales` , `stock` , `img_path` imgPath from t_good where id = ?";
        return queryForOne(Good.class, sql,id);
    }

    @Override
    public List<Good> queryBooks() {
        String sql = "select `id` , `name` , `author` , `price` , `sales` , `stock` , `img_path` imgPath from t_good";
        return queryForList(Good.class, sql);
    }


    @Override
    public Integer queryForPageTotalCount() {
        String sql = "select count(*) from t_good";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    @Override
    public List<Good> queryForPageItems(int begin, int pageSize) {
        String sql = "select `id` , `name` , `author` , `price` , `sales` , `stock` , `img_path` imgPath from t_good limit ?,?";
        return queryForList(Good.class,sql,begin,pageSize);
    }

    @Override
    public Integer queryForPageTotalCountByPrice(int min, int max) {
        String sql = "select count(*) from t_good where price between ? and ?";
        Number count = (Number) queryForSingleValue(sql,min,max);
        return count.intValue();
    }

    @Override
    public List<Good> queryForPageItemsByPrice(int begin, int pageSize, int min, int max) {
        String sql = "select `id`,`name`,`author`,`price`,`sales`,`stock`,`img_path` imgPath " +
                "from t_good where price between ? and ? order by price limit ?,?";
        return queryForList(Good.class,sql,min,max,begin,pageSize);
    }
}

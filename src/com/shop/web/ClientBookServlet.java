package com.shop.web;

import com.shop.entity.Good;
import com.shop.service.GoodService;
import com.shop.service.impl.GoodServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class ClientBookServlet extends BaseServlet {

    private GoodService goodService = new GoodServiceImpl();

    protected void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Good> page = goodService.queryBooks();
        //3 保存Page对象到Request域中
        req.setAttribute("page",page);


        req.getRequestDispatcher("/pages/client/index.jsp").forward(req,resp);
    }

}

package com.cn.action;

import com.alibaba.fastjson.JSON;
import com.cn.entity.PetinfoEntity;
import com.cn.service.PetionfoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class LoginShowAction implements ActionInterface {
    @Override
    public String execute(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        PetionfoService ps = new PetionfoService();
        PetinfoEntity p = (PetinfoEntity) request.getSession().getAttribute("petname");
        System.out.println(JSON.toJSONString(ps.queryOne(p.getPet_name())));
        return JSON.toJSONString(ps.queryOne(p.getPet_name()));
    }
}

package com.cn.action;

import com.cn.entity.PetinfoEntity;
import com.cn.service.PetionfoService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class AddAction implements ActionInterface {
    @Override
    public String execute(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        PetinfoEntity p = new PetinfoEntity();
        p.setPet_type(Integer.parseInt(request.getParameter("item.petType")));
        p.setPet_cute(Integer.parseInt(request.getParameter("item.petCute")));
        p.setPet_love(Integer.parseInt(request.getParameter("item.petLove")));
        p.setPet_strength(Integer.parseInt(request.getParameter("item.petStrength")));
        p.setPet_name(request.getParameter("item.petName"));
        p.setPet_intro(request.getParameter("item.petIntro"));
        p.setPet_owner_name(request.getParameter("item.petOwnerName"));
        p.setPet_owner_email(request.getParameter("item.petOwnerEmail"));
        p.setPet_password(request.getParameter("item.petPassword"));
        p.setPet_sex(request.getParameter("item.petSex"));
        p.setPet_pic("我不知道这个是什么意思！！！");
        PetionfoService ps = new PetionfoService();
        Integer i = ps.add(p);
        String path = "";
        if (i == 0) {
            path = "err.jsp";
        } else {
            path = "index.jsp";
        }
        System.out.println(path);
        return path;
    }
}

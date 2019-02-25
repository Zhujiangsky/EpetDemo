package com.cn.action;

import com.alibaba.fastjson.JSON;
import com.cn.entity.PetinfoEntity;
import com.cn.entity.PetinfoJs;
import com.cn.service.PetionfoService;
import com.cn.test.NFDFlightDataTaskListener;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class UpdateAction implements ActionInterface {
    @Override
    public String execute(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        PetionfoService ps = new PetionfoService();
        PetinfoEntity pinfo = (PetinfoEntity) request.getSession().getAttribute("petname");
        PetinfoJs pjs = new PetinfoJs();
        int k = 0;
        for (int i = 0; i < NFDFlightDataTaskListener.list.size(); i++) {
            if (NFDFlightDataTaskListener.list.get(i).getPetName().equals(pinfo.getPet_name())) {
                pjs.setEatjs(NFDFlightDataTaskListener.list.get(i).getEatjs());
                pjs.setGamejs(NFDFlightDataTaskListener.list.get(i).getGamejs());
                pjs.setStoryjs(NFDFlightDataTaskListener.list.get(i).getStoryjs());
                break;
            }
            k++;
        }
        if (request.getParameter("op").equals("lil")) {
            if (NFDFlightDataTaskListener.list.get(k).getEatjs() <= 0) {

            } else {
                NFDFlightDataTaskListener.list.get(k).setEatjs((pjs.getEatjs() - 1));
                ps.update(request.getParameter("petname"), "lil");
            }
        }
        if (request.getParameter("op").equals("zl")) {
            if (NFDFlightDataTaskListener.list.get(k).getGamejs() <= 0) {
            } else {
                NFDFlightDataTaskListener.list.get(k).setGamejs((pjs.getGamejs() - 1));
                ps.update(request.getParameter("petname"), "zl");
            }
        }
        if (request.getParameter("op").equals("love")) {
            if (NFDFlightDataTaskListener.list.get(k).getStoryjs() <= 0) {

            } else {
                NFDFlightDataTaskListener.list.get(k).setStoryjs((pjs.getStoryjs() - 1));
                ps.update(request.getParameter("petname"), "love");
            }
        }
        PetinfoEntity p = (PetinfoEntity) request.getSession().getAttribute("petname");
        return JSON.toJSONString(ps.queryOne(p.getPet_name()));
    }
}

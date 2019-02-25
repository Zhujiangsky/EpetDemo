package com.cn.action;

import com.alibaba.fastjson.JSON;
import com.cn.dao.entdao.PetinfoDao;
import com.cn.entity.PetinfoEntity;
import com.cn.service.PetdiaryService;
import com.cn.service.PetionfoService;
import com.cn.util.Pager;
import org.apache.commons.io.output.CloseShieldOutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.SQLOutput;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShowAction implements ActionInterface {
    @Override
    public String execute(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        PetionfoService ps = new PetionfoService();
        PetdiaryService pss = new PetdiaryService();
        StringBuffer bf = new StringBuffer("{\"listdate\":");
        bf.append(JSON.toJSONString(pss.queryAll(0, 0)));
        bf.append(",\"listdate1\":");
        bf.append(JSON.toJSONString(ps.queryAll(0, 0)));
        bf.append("}");
        System.out.println(bf.toString());
        return bf.toString();
    }

}

package com.cn.action;

import com.cn.entity.PetinfoEntity;
import com.cn.entity.PetinfoJs;
import com.cn.service.PetionfoService;
import com.cn.test.NFDFlightDataTaskListener;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoginAction implements ActionInterface {
    @Override
    public String execute(String type, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException, ClassNotFoundException {
        ServletContext application = request.getSession().getServletContext();
        String path = "";
        PetionfoService ps = new PetionfoService();
        PetinfoJs p = new PetinfoJs();
        PetinfoEntity p1 = new PetinfoEntity();
        p1.setPet_name(request.getParameter("condition.petId"));
        p1.setPet_password(request.getParameter("condition.petPassword"));
        if (ps.queryOne(p1) != null) {
            PetinfoEntity p2 = ps.queryOne(p1);
            p.setPetName(p1.getPet_name());
            p.setEatjs(3);
            p.setGamejs(5);
            p.setStoryjs(5);
            p.setLearnjs(3);
            request.getSession().setAttribute("petname", p2);
            boolean b = true;
            for (int i = 0; i < NFDFlightDataTaskListener.list.size(); i++) {
                if (NFDFlightDataTaskListener.list.get(i).getPetName().equals(p1.getPet_name())) {
                    b = false;
                }
            }
            if (b == true) {
                NFDFlightDataTaskListener.list.add(p);
            }
            System.out.println(NFDFlightDataTaskListener.list.size());
            path = "pet.jsp";
        } else {
            path = "index.jsp";
        }
        return path;
    }
}

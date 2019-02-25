package com.cn.test;


import com.cn.service.PetionfoService;

import java.sql.SQLException;


public class DeleteApplication {
    public void deletApplication() throws SQLException, ClassNotFoundException {
        NFDFlightDataTaskListener.list.clear();
        //通过定时器，每天定时扣除 力量 爱心 聪明
        System.out.println(NFDFlightDataTaskListener.list.size());
        PetionfoService p = new PetionfoService();
        p.update(null);
        System.out.println("清空list成功");
    }
}

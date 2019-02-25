package com.cn.service;

import com.cn.dao.entdao.PetinfoDao;
import com.cn.entity.PetdiaryEntity;
import com.cn.entity.PetinfoEntity;
import com.cn.serviceIntface.PetionfoServiceIntface;
import org.apache.log4j.Logger;

import java.sql.SQLException;
import java.util.List;

public class PetionfoService implements PetionfoServiceIntface {
    private Logger logger = Logger.getLogger(PetionfoService.class);
    PetinfoDao p = new PetinfoDao();

    @Override
    public int add(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException {
        Integer count = 0;
        count = p.add(petinfoEntity);
        return count;
    }

    @Override
    public List<PetinfoEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException {

        return p.queryAll(0, 0);
    }

    @Override
    public PetinfoEntity queryOne(int id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public PetinfoEntity queryOne(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException {
        return p.queryOne(petinfoEntity);
    }

    @Override
    public PetinfoEntity queryOne(String name) throws SQLException, ClassNotFoundException {
        return p.queryOne(name);
    }

    @Override
    public int update(String PetinfoEntity, String type) throws SQLException, ClassNotFoundException {
        return p.update(PetinfoEntity, type);
    }

    @Override
    public int update(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException {
        return p.update(petinfoEntity, "meitian");
    }

    @Override
    public Integer count(String filename) throws SQLException, ClassNotFoundException {
        return null;
    }
}

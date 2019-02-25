package com.cn.service;

import com.cn.dao.entdao.PetdiaryDao;
import com.cn.entity.PetdiaryEntity;
import com.cn.serviceIntface.PetdiaryServiceIntface;

import java.sql.SQLException;
import java.util.List;

public class PetdiaryService implements PetdiaryServiceIntface {

    PetdiaryDao p = new PetdiaryDao();

    @Override
    public int add(PetdiaryEntity petdiaryEntity) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public List<PetdiaryEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException {
        return p.queryAll(0, 0);
    }

    @Override
    public PetdiaryEntity queryOne(int id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public PetdiaryEntity queryOne(PetdiaryEntity petdiaryEntity) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public int update(PetdiaryEntity petdiaryEntity, String type) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public Integer count(String filename) throws SQLException, ClassNotFoundException {
        return null;
    }
}

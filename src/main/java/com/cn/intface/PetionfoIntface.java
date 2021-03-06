package com.cn.intface;

import com.cn.entity.PetinfoEntity;

import java.sql.SQLException;
import java.util.List;

public interface PetionfoIntface {
    public int add(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException;

    public List<PetinfoEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException;

    public PetinfoEntity queryOne(int id) throws SQLException, ClassNotFoundException;

    public PetinfoEntity queryOne(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException;


    public PetinfoEntity queryOne(String name) throws SQLException, ClassNotFoundException;


    public int update(String petinfoEntity, String type) throws SQLException, ClassNotFoundException;

    public int update(PetinfoEntity petinfoEntity, String type) throws SQLException, ClassNotFoundException;


    public Integer count(String filename) throws SQLException, ClassNotFoundException;
}

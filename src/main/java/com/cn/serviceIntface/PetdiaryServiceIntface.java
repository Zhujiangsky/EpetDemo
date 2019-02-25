package com.cn.serviceIntface;

import com.cn.entity.PetdiaryEntity;

import java.sql.SQLException;
import java.util.List;

public interface PetdiaryServiceIntface {
    public int add(PetdiaryEntity petdiaryEntity) throws SQLException, ClassNotFoundException;

    public List<PetdiaryEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException;

    public PetdiaryEntity queryOne(int id) throws SQLException, ClassNotFoundException;

    public PetdiaryEntity queryOne(PetdiaryEntity petdiaryEntity) throws SQLException, ClassNotFoundException;

    public int update(PetdiaryEntity petdiaryEntity, String type) throws SQLException, ClassNotFoundException;

    public Integer count(String filename) throws SQLException, ClassNotFoundException;
}

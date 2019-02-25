package com.cn.dao.entdao;

import com.cn.dao.BaseDao;
import com.cn.entity.PetdiaryEntity;
import com.cn.intface.PetdiaryIntface;
import com.cn.util.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Iterator;
import java.math.BigDecimal;

public class PetdiaryDao extends BaseDao implements PetdiaryIntface {
    RowMapper<PetdiaryEntity> rm = new RowMapper<PetdiaryEntity>() {
        @Override
        public PetdiaryEntity mapper(Map<String, Object> map) {
            PetdiaryEntity petdiary = new PetdiaryEntity();
            Iterator<String> iter = map.keySet().iterator(); // ��������ȡ��ֵ
            while (iter.hasNext()) {
                String x = iter.next();
                Object ob = map.get(x);
                if (x.equals("diary_id")) {
                    petdiary.setDiary_id(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("diary_pet_id")) {
                    petdiary.setDiary_pet_id(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("diary_date")) {
                    petdiary.setDiary_date(java.sql.Date.valueOf(String.valueOf(ob).substring(0, 10)));
                } else if (x.equals("diary_title")) {
                    petdiary.setDiary_title(String.valueOf(ob));
                } else if (x.equals("diary_weather")) {
                    petdiary.setDiary_weather(String.valueOf(ob));
                } else if (x.equals("diary_context")) {
                    petdiary.setDiary_context(String.valueOf(ob));
                } else if (x.equals("diary_is_public")) {
                    petdiary.setDiary_is_public(String.valueOf(ob));
                } else if (x.equals("diary_last_modify")) {
                    petdiary.setDiary_last_modify(java.sql.Date.valueOf(String.valueOf(ob).substring(0, 10)));
                } else if (x.equals("diary_author")) {
                    petdiary.setDiary_author(String.valueOf(ob));
                } else if (x.equals("diary_author_email")) {
                    petdiary.setDiary_author_email(String.valueOf(ob));
                }
            }
            return petdiary;
        }
    };

    @Override
    public Object tableToClass(ResultSet rs) throws Exception {
        return null;
    }

    @Override
    public int add(PetdiaryEntity petdiaryEntity) throws SQLException, ClassNotFoundException {
        return 0;
    }

    @Override
    public List<PetdiaryEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException {
        String sql = "select * from petdiary GROUP BY diary_id DESC LIMIT 0,10";
        return this.executeQuery(sql, rm);
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

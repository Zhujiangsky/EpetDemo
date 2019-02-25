package com.cn.dao.entdao;

import com.cn.dao.BaseDao;
import com.cn.entity.PetinfoEntity;
import com.cn.intface.PetionfoIntface;
import com.cn.util.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Iterator;


public class PetinfoDao extends BaseDao implements PetionfoIntface {
    RowMapper<PetinfoEntity> rm = new RowMapper<PetinfoEntity>() {
        @Override
        public PetinfoEntity mapper(Map<String, Object> map) {
            PetinfoEntity petinfo = new PetinfoEntity();
            Iterator<String> iter = map.keySet().iterator();
            while (iter.hasNext()) {
                String x = iter.next();
                Object ob = map.get(x);
                if (x.equals("pet_id")) {
                    petinfo.setPet_id(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("pet_name")) {
                    petinfo.setPet_name(String.valueOf(ob));
                } else if (x.equals("pet_sex")) {
                    petinfo.setPet_sex(String.valueOf(ob));
                } else if (x.equals("pet_strength")) {
                    petinfo.setPet_strength(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("pet_cute")) {
                    petinfo.setPet_cute(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("pet_love")) {
                    petinfo.setPet_love(Integer.parseInt(String.valueOf(ob)));
                } else if (x.equals("pet_intro")) {
                    petinfo.setPet_intro(String.valueOf(ob));
                } else if (x.equals("pet_owner_name")) {
                    petinfo.setPet_owner_name(String.valueOf(ob));
                } else if (x.equals("pet_owner_email")) {
                    petinfo.setPet_owner_email(String.valueOf(ob));
                } else if (x.equals("pet_password")) {
                    petinfo.setPet_password(String.valueOf(ob));
                } else if (x.equals("pet_pic")) {
                    petinfo.setPet_pic(String.valueOf(ob));
                } else if (x.equals("pet_type")) {
                    petinfo.setPet_type(Integer.parseInt(String.valueOf(ob)));
                }
            }
            return petinfo;
        }
    };

    @Override
    public int add(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException {
        Integer count = 0;
        String sql = "insert into petinfo(pet_name,pet_sex,pet_strength,pet_cute,pet_love,pet_intro,pet_owner_name,pet_owner_email,pet_password,pet_pic,pet_type) values(?,?,?,?,?,?,?,?,?,?,?)";
        count = this.executeUpdate(sql, petinfoEntity.getPet_name(), petinfoEntity.getPet_sex(), petinfoEntity.getPet_strength(), petinfoEntity.getPet_cute(), petinfoEntity.getPet_love(), petinfoEntity.getPet_intro(), petinfoEntity.getPet_owner_name(), petinfoEntity.getPet_owner_email(), petinfoEntity.getPet_password(), petinfoEntity.getPet_pic(), petinfoEntity.getPet_type());
        return count;
    }

    @Override
    public List<PetinfoEntity> queryAll(Integer currentPageNo, Integer pageSize) throws SQLException, ClassNotFoundException {
        String sql = "SELECT * from petinfo ORDER BY petinfo.pet_love DESC LIMIT 0,10";
        String sql1 = "SELECT * from petinfo ORDER BY petinfo.pet_cute DESC LIMIT 0,10";
        List<PetinfoEntity> list = this.executeQuery(sql, rm);
        List<PetinfoEntity> list1 = this.executeQuery(sql1, rm);
        list.addAll(list1);
        return list;
    }

    @Override
    public PetinfoEntity queryOne(int id) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public PetinfoEntity queryOne(PetinfoEntity petinfoEntity) throws SQLException, ClassNotFoundException {
        String sql = "select * from petinfo where pet_name=? and pet_password=?";
        return this.executeQueryOne(sql, rm, petinfoEntity.getPet_name(), petinfoEntity.getPet_password());
    }

    @Override
    public PetinfoEntity queryOne(String name) throws SQLException, ClassNotFoundException {
        String sql = "select * from petinfo where pet_name=? ";
        return this.executeQueryOne(sql, rm, name);

    }

    @Override
    public int update(String petinfoEntity, String type) throws SQLException, ClassNotFoundException {
        int cont = 0;
        if (type.equals("lil")) {
            String sql = "UPDATE petinfo SET pet_strength = (pet_strength+30) where pet_name=?";
            cont = this.executeUpdate(sql, petinfoEntity);
        }
        if (type.equals("zl")) {
            String sql = "UPDATE petinfo SET pet_strength = (pet_strength-5) , pet_love=(pet_love+3), pet_cute=(pet_cute+1) where pet_name=?";
            cont = this.executeUpdate(sql, petinfoEntity);
        }
        if (type.equals("love")) {
            String sql = "UPDATE petinfo SET pet_strength = (pet_strength-5) , pet_love=(pet_love+1), pet_cute=(pet_cute+3) where pet_name=?";
            cont = this.executeUpdate(sql, petinfoEntity);
        }
        return cont;
    }

    @Override
    public int update(PetinfoEntity petinfoEntity, String type) throws SQLException, ClassNotFoundException {
        int cont = 0;
        if (type.equals("meitian")) {
            String sql = "UPDATE petinfo SET pet_strength = (pet_strength-10) , pet_love=(pet_love-5), pet_cute=(pet_cute-2) WHERE 1=1";
            cont = this.executeUpdate(sql);
        }
        return cont;
    }

    @Override
    public Integer count(String filename) throws SQLException, ClassNotFoundException {
        return null;
    }

    @Override
    public Object tableToClass(ResultSet rs) throws Exception {
        return null;
    }
}

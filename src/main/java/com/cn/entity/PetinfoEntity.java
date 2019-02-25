package com.cn.entity;

import java.sql.Date;
import java.math.BigDecimal;

public class PetinfoEntity {
    private Integer pet_id;
    private String pet_name;
    private String pet_sex;
    private Integer pet_strength;
    private Integer pet_cute;
    private Integer pet_love;
    private String pet_intro;
    private String pet_owner_name;
    private String pet_owner_email;
    private String pet_password;
    private String pet_pic;
    private Integer pet_type;

    public Integer getPet_id() {
        return pet_id;
    }

    public void setPet_id(Integer pet_id) {
        this.pet_id = pet_id;
    }

    public String getPet_name() {
        return pet_name;
    }

    public void setPet_name(String pet_name) {
        this.pet_name = pet_name;
    }

    public String getPet_sex() {
        return pet_sex;
    }

    public void setPet_sex(String pet_sex) {
        this.pet_sex = pet_sex;
    }

    public Integer getPet_strength() {
        return pet_strength;
    }

    public void setPet_strength(Integer pet_strength) {
        this.pet_strength = pet_strength;
    }

    public Integer getPet_cute() {
        return pet_cute;
    }

    public void setPet_cute(Integer pet_cute) {
        this.pet_cute = pet_cute;
    }

    public Integer getPet_love() {
        return pet_love;
    }

    public void setPet_love(Integer pet_love) {
        this.pet_love = pet_love;
    }

    public String getPet_intro() {
        return pet_intro;
    }

    public void setPet_intro(String pet_intro) {
        this.pet_intro = pet_intro;
    }

    public String getPet_owner_name() {
        return pet_owner_name;
    }

    public void setPet_owner_name(String pet_owner_name) {
        this.pet_owner_name = pet_owner_name;
    }

    public String getPet_owner_email() {
        return pet_owner_email;
    }

    public void setPet_owner_email(String pet_owner_email) {
        this.pet_owner_email = pet_owner_email;
    }

    public String getPet_password() {
        return pet_password;
    }

    public void setPet_password(String pet_password) {
        this.pet_password = pet_password;
    }

    public String getPet_pic() {
        return pet_pic;
    }

    public void setPet_pic(String pet_pic) {
        this.pet_pic = pet_pic;
    }

    public Integer getPet_type() {
        return pet_type;
    }

    public void setPet_type(Integer pet_type) {
        this.pet_type = pet_type;
    }

    public PetinfoEntity() {

    }
}

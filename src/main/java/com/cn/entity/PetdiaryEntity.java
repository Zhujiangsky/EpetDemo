package com.cn.entity;

import com.cn.test.NFDFlightDataTaskListener;

import java.sql.Date;
import java.math.BigDecimal;

public class PetdiaryEntity {
    private Integer diary_id;
    private Integer diary_pet_id;
    private Date diary_date;
    private String diary_title;
    private String diary_weather;
    private String diary_context;
    private String diary_is_public;
    private Date diary_last_modify;
    private String diary_author;
    private String diary_author_email;

    public Integer getDiary_id() {
        return diary_id;
    }

    public void setDiary_id(Integer diary_id) {
        this.diary_id = diary_id;
    }

    public Integer getDiary_pet_id() {
        return diary_pet_id;
    }

    public void setDiary_pet_id(Integer diary_pet_id) {
        this.diary_pet_id = diary_pet_id;
    }

    public Date getDiary_date() {
        return diary_date;
    }

    public void setDiary_date(Date diary_date) {
        this.diary_date = diary_date;
    }

    public String getDiary_title() {
        return diary_title;
    }

    public void setDiary_title(String diary_title) {
        this.diary_title = diary_title;
    }

    public String getDiary_weather() {
        return diary_weather;
    }

    public void setDiary_weather(String diary_weather) {
        this.diary_weather = diary_weather;
    }

    public String getDiary_context() {
        return diary_context;
    }

    public void setDiary_context(String diary_context) {
        this.diary_context = diary_context;
    }

    public String getDiary_is_public() {
        return diary_is_public;
    }

    public void setDiary_is_public(String diary_is_public) {
        this.diary_is_public = diary_is_public;
    }

    public Date getDiary_last_modify() {
        return diary_last_modify;
    }

    public void setDiary_last_modify(Date diary_last_modify) {
        this.diary_last_modify = diary_last_modify;
    }

    public String getDiary_author() {
        return diary_author;
    }

    public void setDiary_author(String diary_author) {
        this.diary_author = diary_author;
    }

    public String getDiary_author_email() {
        return diary_author_email;
    }

    public void setDiary_author_email(String diary_author_email) {
        this.diary_author_email = diary_author_email;
    }

    public PetdiaryEntity() {

    }
}

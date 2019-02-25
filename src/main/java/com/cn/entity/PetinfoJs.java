package com.cn.entity;

public class PetinfoJs {
    private String petName;
    private Integer learnjs;
    private Integer eatjs;
    private Integer gamejs;
    private Integer storyjs;

    public PetinfoJs(String petName, Integer learnjs, Integer eatjs, Integer gamejs, Integer storyjs) {
        this.petName = petName;
        this.learnjs = learnjs;
        this.eatjs = eatjs;
        this.gamejs = gamejs;
        this.storyjs = storyjs;
    }

    public PetinfoJs() {
    }

    public String getPetName() {
        return petName;
    }

    public void setPetName(String petName) {
        this.petName = petName;
    }

    public Integer getLearnjs() {
        return learnjs;
    }

    public void setLearnjs(Integer learnjs) {
        this.learnjs = learnjs;
    }

    public Integer getEatjs() {
        return eatjs;
    }

    public void setEatjs(Integer eatjs) {
        this.eatjs = eatjs;
    }

    public Integer getGamejs() {
        return gamejs;
    }

    public void setGamejs(Integer gamejs) {
        this.gamejs = gamejs;
    }

    public Integer getStoryjs() {
        return storyjs;
    }

    public void setStoryjs(Integer storyjs) {
        this.storyjs = storyjs;
    }
}

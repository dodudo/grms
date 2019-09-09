package cn.ganin.entity;

import java.util.Date;

public class StudentPositionBean {
    private int stu_id;
    private int resume_id;
    private int recruit_id;
    private int enterprise_id;
    private int position_id;
    private String resume_name;
    private String position_name;
    private String enterprise_name;
    private String recruit_state;
    private Date resume_time;

    public int getStu_id() {
        return stu_id;
    }

    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    public int getResume_id() {
        return resume_id;
    }

    public void setResume_id(int resume_id) {
        this.resume_id = resume_id;
    }

    public int getRecruit_id() {
        return recruit_id;
    }

    public void setRecruit_id(int recruit_id) {
        this.recruit_id = recruit_id;
    }

    public int getEnterprise_id() {
        return enterprise_id;
    }

    public void setEnterprise_id(int enterprise_id) {
        this.enterprise_id = enterprise_id;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public String getResume_name() {
        return resume_name;
    }

    public void setResume_name(String resume_name) {
        this.resume_name = resume_name;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
    }

    public String getEnterprise_name() {
        return enterprise_name;
    }

    public void setEnterprise_name(String enterprise_name) {
        this.enterprise_name = enterprise_name;
    }

    public String getRecruit_state() {
        return recruit_state;
    }

    public void setRecruit_state(String recruit_state) {
        this.recruit_state = recruit_state;
    }

    public Date getResume_time() {
        return resume_time;
    }

    public void setResume_time(Date resume_time) {
        this.resume_time = resume_time;
    }
}

package cn.ganin.entity;

import java.util.Date;

public class EnterpriseResumeBean {
    private int position_id;
    private int enterprise_id;
    private int resume_id;
    private int recruit_id;
    private String recruit_state;
    private String position_name;
    private Date position_end_time;
    private String stu_name;

    public int getRecruit_id() {
        return recruit_id;
    }

    public void setRecruit_id(int recruit_id) {
        this.recruit_id = recruit_id;
    }

    public String getRecruit_state() {
        return recruit_state;
    }

    public void setRecruit_state(String recruit_state) {
        this.recruit_state = recruit_state;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public int getEnterprise_id() {
        return enterprise_id;
    }

    public void setEnterprise_id(int enterprise_id) {
        this.enterprise_id = enterprise_id;
    }

    public int getResume_id() {
        return resume_id;
    }

    public void setResume_id(int resume_id) {
        this.resume_id = resume_id;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
    }

    public Date getPosition_end_time() {
        return position_end_time;
    }

    public void setPosition_end_time(Date position_end_time) {
        this.position_end_time = position_end_time;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    @Override
    public String toString() {
        return "EnterpriseResumeBean{" +
                "position_id=" + position_id +
                ", enterprise_id=" + enterprise_id +
                ", resume_id=" + resume_id +
                ", position_name='" + position_name + '\'' +
                ", position_end_time=" + position_end_time +
                ", stu_name='" + stu_name + '\'' +
                '}';
    }
}

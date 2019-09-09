package cn.ganin.entity;

import java.util.Date;

public class Position {
    private int position_id;
    private String position_name;
    private String position_address;
    private String position_time;
    private String position_num;
    private String position_edu;
    private String position_experience;
    private String position_salary;
    private String position_desc;
    private String position_duty;
    private Date position_start_time;
    private Date position_end_time;
    private Date position_edit_time;
    private int position_enterprise_id;
    private String position_publish_state;
    private String position_state;

    public String getPosition_state() {
        return position_state;
    }

    public void setPosition_state(String position_state) {
        this.position_state = position_state;
    }

    public int getPosition_id() {
        return position_id;
    }

    public void setPosition_id(int position_id) {
        this.position_id = position_id;
    }

    public Date getPosition_start_time() {
        return position_start_time;
    }

    public void setPosition_start_time(Date position_start_time) {
        this.position_start_time = position_start_time;
    }

    public Date getPosition_end_time() {
        return position_end_time;
    }

    public void setPosition_end_time(Date position_end_time) {
        this.position_end_time = position_end_time;
    }

    public Date getPosition_edit_time() {
        return position_edit_time;
    }

    public void setPosition_edit_time(Date position_edit_time) {
        this.position_edit_time = position_edit_time;
    }

    public int getPosition_enterprise_id() {
        return position_enterprise_id;
    }

    public void setPosition_enterprise_id(int position_enterprise_id) {
        this.position_enterprise_id = position_enterprise_id;
    }

    public String getPosition_name() {
        return position_name;
    }

    public void setPosition_name(String position_name) {
        this.position_name = position_name;
    }

    public String getPosition_address() {
        return position_address;
    }

    public void setPosition_address(String position_address) {
        this.position_address = position_address;
    }

    public String getPosition_time() {
        return position_time;
    }

    public void setPosition_time(String position_time) {
        this.position_time = position_time;
    }

    public String getPosition_num() {
        return position_num;
    }

    public void setPosition_num(String position_num) {
        this.position_num = position_num;
    }

    public String getPosition_edu() {
        return position_edu;
    }

    public void setPosition_edu(String position_edu) {
        this.position_edu = position_edu;
    }

    public String getPosition_experience() {
        return position_experience;
    }

    public void setPosition_experience(String position_experience) {
        this.position_experience = position_experience;
    }

    public String getPosition_salary() {
        return position_salary;
    }

    public void setPosition_salary(String position_salary) {
        this.position_salary = position_salary;
    }

    public String getPosition_desc() {
        return position_desc;
    }

    public void setPosition_desc(String position_desc) {
        this.position_desc = position_desc;
    }

    public String getPosition_duty() {
        return position_duty;
    }

    public void setPosition_duty(String position_duty) {
        this.position_duty = position_duty;
    }


    public String getPosition_publish_state() {
        return position_publish_state;
    }

    public void setPosition_publish_state(String position_publish_state) {
        this.position_publish_state = position_publish_state;
    }

    @Override
    public String toString() {
        return "Position{" +
                "position_id=" + position_id +
                ", position_name='" + position_name + '\'' +
                ", position_address='" + position_address + '\'' +
                ", position_time='" + position_time + '\'' +
                ", position_num='" + position_num + '\'' +
                ", position_edu='" + position_edu + '\'' +
                ", position_experience='" + position_experience + '\'' +
                ", position_salary='" + position_salary + '\'' +
                ", position_desc='" + position_desc + '\'' +
                ", position_duty='" + position_duty + '\'' +
                ", position_start_time=" + position_start_time +
                ", position_end_time=" + position_end_time +
                ", position_edit_time=" + position_edit_time +
                ", position_enterprise_id=" + position_enterprise_id +
                ", position_publish_state='" + position_publish_state + '\'' +
                ", position_state='" + position_state + '\'' +
                '}';
    }
}

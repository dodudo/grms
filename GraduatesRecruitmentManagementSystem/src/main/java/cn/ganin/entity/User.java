package cn.ganin.entity;

public class User {
    private int bas_id;
    private String bas_name;
    private String bas_sex;
    private String bas_age;
    private String bas_city;
    private String bas_workexper;
    private String bas_call;
    private String bas_email;
    private String bas_icon;
    private String bas_time;

    public User(){

    }

    public User(int bas_id,String bas_name,String bas_sex,String bas_age,String bas_city,String bas_workexper,String bas_call,String bas_email,String bas_icon,String bas_time){
//        this.uid = uid;
        this.bas_id = bas_id;
        this.bas_name = bas_name;
        this.bas_sex = bas_sex;
        this.bas_age = bas_age;
        this.bas_city = bas_city;
        this.bas_workexper = bas_workexper;
        this.bas_call = bas_call;
        this.bas_email = bas_email;
        this.bas_icon = bas_icon;
        this.bas_time = bas_time;
    }

//    public int getUid() {
//        return uid;
//    }
//
//    public void setUid(int uid) {
//        this.uid = uid;
//    }

    public int getBas_id() {
        return bas_id;
    }

    public void setBas_id(int bas_id) {
        this.bas_id = bas_id;
    }

    public String getBas_name() {
        return bas_name;
    }

    public void setBas_name(String bas_name) {
        this.bas_name = bas_name;
    }

    public String getBas_sex() {
        return bas_sex;
    }

    public void setBas_sex(String bas_sex) {
        this.bas_sex = bas_sex;
    }

    public String getBas_age() {
        return bas_age;
    }

    public void setBas_age(String bas_age) {
        this.bas_age = bas_age;
    }

    public String getBas_city() {
        return bas_city;
    }

    public void setBas_city(String bas_city) {
        this.bas_city = bas_city;
    }

    public String getBas_workexper() {
        return bas_workexper;
    }

    public void setBas_workexper(String bas_workexper) {
        this.bas_workexper = bas_workexper;
    }

    public String getBas_call() {
        return bas_call;
    }

    public void setBas_call(String bas_call) {
        this.bas_call = bas_call;
    }

    public String getBas_email() {
        return bas_email;
    }

    public void setBas_email(String bas_email) {
        this.bas_email = bas_email;
    }

    public String getBas_icon() {
        return bas_icon;
    }

    public void setBas_icon(String bas_icon) {
        this.bas_icon = bas_icon;
    }

    public String getBas_time() {
        return bas_time;
    }

    public void setBas_time(String bas_time) {
        this.bas_time = bas_time;
    }
}

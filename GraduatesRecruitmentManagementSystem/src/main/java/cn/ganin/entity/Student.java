package cn.ganin.entity;

public class Student {
    private int stu_num;
    private int stu_id;
    private String stu_name;
    private String stu_sex;
    private String stu_age;
    private String stu_email;
    private String stu_phone;
    private String stu_password;
    private String stu_college_name;
    private String stu_major_name;
    private String stu_role_id;
    private String sum;

    public Student(){}

    public int getStu_num() {
        return stu_num;
    }

    public void setStu_num(int stu_num) {
        this.stu_num = stu_num;
    }

    public Student(int stu_id, String stu_name, String stu_sex, String stu_age, String stu_email, String stu_phone, String stu_password, String stu_college_name, String stu_major_name, String stu_role_id, String sum){
        this.stu_id = stu_id;
        this.stu_name = stu_name;
        this.stu_sex = stu_sex;
        this.stu_age = stu_age;
        this.stu_email = stu_email;
        this.stu_phone = stu_phone;
        this.stu_password = stu_password;
        this.stu_college_name = stu_college_name;
        this.stu_major_name = stu_major_name;
        this.stu_role_id = stu_role_id;
        this.sum = sum;
    }

    public int getStu_id() {
        return stu_id;
    }

    public void setStu_id(int stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public String getStu_sex() {
        return stu_sex;
    }

    public void setStu_sex(String stu_sex) {
        this.stu_sex = stu_sex;
    }

    public String getStu_age() {
        return stu_age;
    }

    public void setStu_age(String stu_age) {
        this.stu_age = stu_age;
    }

    public String getStu_email() {
        return stu_email;
    }

    public void setStu_email(String stu_email) {
        this.stu_email = stu_email;
    }

    public String getStu_phone() {
        return stu_phone;
    }

    public void setStu_phone(String stu_phone) {
        this.stu_phone = stu_phone;
    }

    public String getStu_password() {
        return stu_password;
    }

    public void setStu_password(String stu_password) {
        this.stu_password = stu_password;
    }

    public String getStu_college_name() {
        return stu_college_name;
    }

    public void setStu_college_name(String stu_college_name) {
        this.stu_college_name = stu_college_name;
    }

    public String getStu_major_name() {
        return stu_major_name;
    }

    public void setStu_major_name(String stu_major_name) {
        this.stu_major_name = stu_major_name;
    }

    public String getStu_role_id() {
        return stu_role_id;
    }

    public void setStu_role_id(String stu_role_id) {
        this.stu_role_id = stu_role_id;
    }

    public String getSum() {
        return sum;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }
}

package cn.ganin.entity;

import java.util.Date;

public class Resume {
    private int resume_id;
    private String resume_name;
    private int resume_stu_id;
    private String resume_stu_name;
    private String resume_stu_sex;
    private String resume_stu_phone;
    private String resume_stu_email;
    private String resume_school;
    private String resume_major;
    private String resume_edu;
    private String resume_start_school;
    private String resume_end_school;
    private String resume_desc;
    private String resume_internship;
    private String resume_practice;
    private String resume_skill;
    private String resume_hobby;
    private String resume_works;
    private Date resume_time;

    public Resume(){

    }

    public Resume(int resume_id,String resume_name,int resume_stu_id,String resume_stu_name,String resume_stu_sex,String resume_stu_phone,String resume_stu_email,String resume_school,String resume_major,String resume_edu,String resume_start_school,
                  String resume_end_school,String resume_desc,String resume_internship,String resume_practice,String resume_skill,
                  String resume_hobby,String resume_works,Date resume_time){
        this.resume_id = resume_id;
        this.resume_name = resume_name;
        this.resume_stu_id = resume_stu_id;
        this.resume_stu_name = resume_stu_name;
        this.resume_stu_sex = resume_stu_sex;
        this.resume_stu_phone = resume_stu_phone;
        this.resume_stu_email = resume_stu_email;
        this.resume_school = resume_school;
        this.resume_major = resume_major;
        this.resume_edu = resume_edu;
        this.resume_start_school = resume_start_school;
        this.resume_end_school = resume_end_school;
        this.resume_desc = resume_desc;
        this.resume_internship = resume_internship;
        this.resume_practice = resume_practice;
        this.resume_skill = resume_skill;
        this.resume_hobby = resume_hobby;
        this.resume_works = resume_works;
        this.resume_time = resume_time;
    }

    public int getResume_id() {
        return resume_id;
    }

    public void setResume_id(int resume_id) {
        this.resume_id = resume_id;
    }

    public String getResume_name() {
        return resume_name;
    }

    public void setResume_name(String resume_name) {
        this.resume_name = resume_name;
    }

    public String getResume_stu_name() {
        return resume_stu_name;
    }

    public void setResume_stu_name(String resume_stu_name) {
        this.resume_stu_name = resume_stu_name;
    }

    public String getResume_stu_sex() {
        return resume_stu_sex;
    }

    public void setResume_stu_sex(String resume_stu_sex) {
        this.resume_stu_sex = resume_stu_sex;
    }

    public String getResume_stu_phone() {
        return resume_stu_phone;
    }

    public void setResume_stu_phone(String resume_stu_phone) {
        this.resume_stu_phone = resume_stu_phone;
    }

    public String getResume_stu_email() {
        return resume_stu_email;
    }

    public void setResume_stu_email(String resume_stu_email) {
        this.resume_stu_email = resume_stu_email;
    }

    public String getResume_school() {
        return resume_school;
    }

    public void setResume_school(String resume_school) {
        this.resume_school = resume_school;
    }

    public String getResume_major() {
        return resume_major;
    }

    public void setResume_major(String resume_major) {
        this.resume_major = resume_major;
    }

    public String getResume_edu() {
        return resume_edu;
    }

    public void setResume_edu(String resume_edu) {
        this.resume_edu = resume_edu;
    }

    public String getResume_start_school() {
        return resume_start_school;
    }

    public void setResume_start_school(String resume_start_school) {
        this.resume_start_school = resume_start_school;
    }

    public String getResume_end_school() {
        return resume_end_school;
    }

    public void setResume_end_school(String resume_end_school) {
        this.resume_end_school = resume_end_school;
    }

    public String getResume_desc() {
        return resume_desc;
    }

    public void setResume_desc(String resume_desc) {
        this.resume_desc = resume_desc;
    }

    public String getResume_internship() {
        return resume_internship;
    }

    public void setResume_internship(String resume_internship) {
        this.resume_internship = resume_internship;
    }

    public String getResume_practice() {
        return resume_practice;
    }

    public void setResume_practice(String resume_practice) {
        this.resume_practice = resume_practice;
    }

    public String getResume_skill() {
        return resume_skill;
    }

    public void setResume_skill(String resume_skill) {
        this.resume_skill = resume_skill;
    }

    public String getResume_hobby() {
        return resume_hobby;
    }

    public void setResume_hobby(String resume_hobby) {
        this.resume_hobby = resume_hobby;
    }

    public String getResume_works() {
        return resume_works;
    }

    public void setResume_works(String resume_works) {
        this.resume_works = resume_works;
    }


    public int getResume_stu_id() {
        return resume_stu_id;
    }

    public void setResume_stu_id(int resume_stu_id) {
        this.resume_stu_id = resume_stu_id;
    }

    public Date getResume_time() {
        return resume_time;
    }

    public void setResume_time(Date resume_time) {
        this.resume_time = resume_time;
    }
}

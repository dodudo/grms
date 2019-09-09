package cn.ganin.pojo;

import java.util.Date;

public class resume {
    private Integer resumeId;

    private Integer resumeStuId;

    private String resumeStuName;

    private String resumeStuSex;

    private String resumeStuPhone;

    private String resumeStuEmail;

    private String resumeName;

    private String resumeSchool;

    private String resumeMajor;

    private String resumeEdu;

    private Date resumeStartSchool;

    private Date resumeEndSchool;

    private Date resumeTime;

    public resume(Integer resumeId, Integer resumeStuId, String resumeStuName, String resumeStuSex, String resumeStuPhone, String resumeStuEmail, String resumeName, String resumeSchool, String resumeMajor, String resumeEdu, Date resumeStartSchool, Date resumeEndSchool, Date resumeTime) {
        this.resumeId = resumeId;
        this.resumeStuId = resumeStuId;
        this.resumeStuName = resumeStuName;
        this.resumeStuSex = resumeStuSex;
        this.resumeStuPhone = resumeStuPhone;
        this.resumeStuEmail = resumeStuEmail;
        this.resumeName = resumeName;
        this.resumeSchool = resumeSchool;
        this.resumeMajor = resumeMajor;
        this.resumeEdu = resumeEdu;
        this.resumeStartSchool = resumeStartSchool;
        this.resumeEndSchool = resumeEndSchool;
        this.resumeTime = resumeTime;
    }

    public resume() {
        super();
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public Integer getResumeStuId() {
        return resumeStuId;
    }

    public void setResumeStuId(Integer resumeStuId) {
        this.resumeStuId = resumeStuId;
    }

    public String getResumeStuName() {
        return resumeStuName;
    }

    public void setResumeStuName(String resumeStuName) {
        this.resumeStuName = resumeStuName == null ? null : resumeStuName.trim();
    }

    public String getResumeStuSex() {
        return resumeStuSex;
    }

    public void setResumeStuSex(String resumeStuSex) {
        this.resumeStuSex = resumeStuSex == null ? null : resumeStuSex.trim();
    }

    public String getResumeStuPhone() {
        return resumeStuPhone;
    }

    public void setResumeStuPhone(String resumeStuPhone) {
        this.resumeStuPhone = resumeStuPhone == null ? null : resumeStuPhone.trim();
    }

    public String getResumeStuEmail() {
        return resumeStuEmail;
    }

    public void setResumeStuEmail(String resumeStuEmail) {
        this.resumeStuEmail = resumeStuEmail == null ? null : resumeStuEmail.trim();
    }

    public String getResumeName() {
        return resumeName;
    }

    public void setResumeName(String resumeName) {
        this.resumeName = resumeName == null ? null : resumeName.trim();
    }

    public String getResumeSchool() {
        return resumeSchool;
    }

    public void setResumeSchool(String resumeSchool) {
        this.resumeSchool = resumeSchool == null ? null : resumeSchool.trim();
    }

    public String getResumeMajor() {
        return resumeMajor;
    }

    public void setResumeMajor(String resumeMajor) {
        this.resumeMajor = resumeMajor == null ? null : resumeMajor.trim();
    }

    public String getResumeEdu() {
        return resumeEdu;
    }

    public void setResumeEdu(String resumeEdu) {
        this.resumeEdu = resumeEdu == null ? null : resumeEdu.trim();
    }

    public Date getResumeStartSchool() {
        return resumeStartSchool;
    }

    public void setResumeStartSchool(Date resumeStartSchool) {
        this.resumeStartSchool = resumeStartSchool;
    }

    public Date getResumeEndSchool() {
        return resumeEndSchool;
    }

    public void setResumeEndSchool(Date resumeEndSchool) {
        this.resumeEndSchool = resumeEndSchool;
    }

    public Date getResumeTime() {
        return resumeTime;
    }

    public void setResumeTime(Date resumeTime) {
        this.resumeTime = resumeTime;
    }
}
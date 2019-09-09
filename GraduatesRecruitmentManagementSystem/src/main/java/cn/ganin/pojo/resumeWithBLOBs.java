package cn.ganin.pojo;

import java.util.Date;

public class resumeWithBLOBs extends resume {
    private String resumeDesc;

    private String resumeInternship;

    private String resumePractice;

    private String resumeSkill;

    private String resumeHobby;

    private String resumeWorks;

    public resumeWithBLOBs(Integer resumeId, Integer resumeStuId, String resumeStuName, String resumeStuSex, String resumeStuPhone, String resumeStuEmail, String resumeName, String resumeSchool, String resumeMajor, String resumeEdu, Date resumeStartSchool, Date resumeEndSchool, Date resumeTime, String resumeDesc, String resumeInternship, String resumePractice, String resumeSkill, String resumeHobby, String resumeWorks) {
        super(resumeId, resumeStuId, resumeStuName, resumeStuSex, resumeStuPhone, resumeStuEmail, resumeName, resumeSchool, resumeMajor, resumeEdu, resumeStartSchool, resumeEndSchool, resumeTime);
        this.resumeDesc = resumeDesc;
        this.resumeInternship = resumeInternship;
        this.resumePractice = resumePractice;
        this.resumeSkill = resumeSkill;
        this.resumeHobby = resumeHobby;
        this.resumeWorks = resumeWorks;
    }

    public resumeWithBLOBs() {
        super();
    }

    public String getResumeDesc() {
        return resumeDesc;
    }

    public void setResumeDesc(String resumeDesc) {
        this.resumeDesc = resumeDesc == null ? null : resumeDesc.trim();
    }

    public String getResumeInternship() {
        return resumeInternship;
    }

    public void setResumeInternship(String resumeInternship) {
        this.resumeInternship = resumeInternship == null ? null : resumeInternship.trim();
    }

    public String getResumePractice() {
        return resumePractice;
    }

    public void setResumePractice(String resumePractice) {
        this.resumePractice = resumePractice == null ? null : resumePractice.trim();
    }

    public String getResumeSkill() {
        return resumeSkill;
    }

    public void setResumeSkill(String resumeSkill) {
        this.resumeSkill = resumeSkill == null ? null : resumeSkill.trim();
    }

    public String getResumeHobby() {
        return resumeHobby;
    }

    public void setResumeHobby(String resumeHobby) {
        this.resumeHobby = resumeHobby == null ? null : resumeHobby.trim();
    }

    public String getResumeWorks() {
        return resumeWorks;
    }

    public void setResumeWorks(String resumeWorks) {
        this.resumeWorks = resumeWorks == null ? null : resumeWorks.trim();
    }
}
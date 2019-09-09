package cn.ganin.entity;

import java.util.List;

public class EnterpriseDataBean {
    private Enterprise enterprise;
    private List<Position> positionPublishedList;
    private List<Position> positionPublishingList;
    private List<Resume> resumeList;


    public List<EnterpriseResumeBean> getEnterpriseResumeList() {
        return enterpriseResumeList;
    }

    public void setEnterpriseResumeList(List<EnterpriseResumeBean> enterpriseResumeList) {
        this.enterpriseResumeList = enterpriseResumeList;
    }

    private List<EnterpriseResumeBean> enterpriseResumeList;

    public Enterprise getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(Enterprise enterprise) {
        this.enterprise = enterprise;
    }

    public List<Position> getPositionPublishedList() {
        return positionPublishedList;
    }

    public void setPositionPublishedList(List<Position> positionPublishedList) {
        this.positionPublishedList = positionPublishedList;
    }

    public List<Position> getPositionPublishingList() {
        return positionPublishingList;
    }

    public void setPositionPublishingList(List<Position> positionPublishingList) {
        this.positionPublishingList = positionPublishingList;
    }

    public List<Resume> getResumeList() {
        return resumeList;
    }

    public void setResumeList(List<Resume> resumeList) {
        this.resumeList = resumeList;
    }
}

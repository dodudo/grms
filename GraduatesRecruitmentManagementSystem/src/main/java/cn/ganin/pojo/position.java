package cn.ganin.pojo;

import java.util.Date;

public class position {
    private Integer positionId;

    private String positionName;

    private String positionAddress;

    private String positionTime;

    private String positionNum;

    private String positionEdu;

    private String positionExperience;

    private String positionSalary;

    private Date positionStartTime;

    private Date positionEndTime;

    private Date positionEditTime;

    private Integer positionEnterpriseId;

    private String positionPublishState;

    private String positionState;

    public position(Integer positionId, String positionName, String positionAddress, String positionTime, String positionNum, String positionEdu, String positionExperience, String positionSalary, Date positionStartTime, Date positionEndTime, Date positionEditTime, Integer positionEnterpriseId, String positionPublishState, String positionState) {
        this.positionId = positionId;
        this.positionName = positionName;
        this.positionAddress = positionAddress;
        this.positionTime = positionTime;
        this.positionNum = positionNum;
        this.positionEdu = positionEdu;
        this.positionExperience = positionExperience;
        this.positionSalary = positionSalary;
        this.positionStartTime = positionStartTime;
        this.positionEndTime = positionEndTime;
        this.positionEditTime = positionEditTime;
        this.positionEnterpriseId = positionEnterpriseId;
        this.positionPublishState = positionPublishState;
        this.positionState = positionState;
    }

    public position() {
        super();
    }

    public Integer getPositionId() {
        return positionId;
    }

    public void setPositionId(Integer positionId) {
        this.positionId = positionId;
    }

    public String getPositionName() {
        return positionName;
    }

    public void setPositionName(String positionName) {
        this.positionName = positionName == null ? null : positionName.trim();
    }

    public String getPositionAddress() {
        return positionAddress;
    }

    public void setPositionAddress(String positionAddress) {
        this.positionAddress = positionAddress == null ? null : positionAddress.trim();
    }

    public String getPositionTime() {
        return positionTime;
    }

    public void setPositionTime(String positionTime) {
        this.positionTime = positionTime == null ? null : positionTime.trim();
    }

    public String getPositionNum() {
        return positionNum;
    }

    public void setPositionNum(String positionNum) {
        this.positionNum = positionNum == null ? null : positionNum.trim();
    }

    public String getPositionEdu() {
        return positionEdu;
    }

    public void setPositionEdu(String positionEdu) {
        this.positionEdu = positionEdu == null ? null : positionEdu.trim();
    }

    public String getPositionExperience() {
        return positionExperience;
    }

    public void setPositionExperience(String positionExperience) {
        this.positionExperience = positionExperience == null ? null : positionExperience.trim();
    }

    public String getPositionSalary() {
        return positionSalary;
    }

    public void setPositionSalary(String positionSalary) {
        this.positionSalary = positionSalary == null ? null : positionSalary.trim();
    }

    public Date getPositionStartTime() {
        return positionStartTime;
    }

    public void setPositionStartTime(Date positionStartTime) {
        this.positionStartTime = positionStartTime;
    }

    public Date getPositionEndTime() {
        return positionEndTime;
    }

    public void setPositionEndTime(Date positionEndTime) {
        this.positionEndTime = positionEndTime;
    }

    public Date getPositionEditTime() {
        return positionEditTime;
    }

    public void setPositionEditTime(Date positionEditTime) {
        this.positionEditTime = positionEditTime;
    }

    public Integer getPositionEnterpriseId() {
        return positionEnterpriseId;
    }

    public void setPositionEnterpriseId(Integer positionEnterpriseId) {
        this.positionEnterpriseId = positionEnterpriseId;
    }

    public String getPositionPublishState() {
        return positionPublishState;
    }

    public void setPositionPublishState(String positionPublishState) {
        this.positionPublishState = positionPublishState == null ? null : positionPublishState.trim();
    }

    public String getPositionState() {
        return positionState;
    }

    public void setPositionState(String positionState) {
        this.positionState = positionState == null ? null : positionState.trim();
    }
}
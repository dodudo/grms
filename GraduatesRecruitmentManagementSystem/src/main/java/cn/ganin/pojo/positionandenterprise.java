package cn.ganin.pojo;

import java.util.Date;

/**
 * @Author agamgn
 * @Date 2019-05-16
 **/
public class positionandenterprise extends positionWithBLOBs{
    private Integer enterpriseId;

    private String enterpriseName;

    private String enterprisePassword;

    private String enterpriseUsername;

    private String enterpriseAddress;

    private String enterpriseContact;

    private String enterprisePhone;

    private String enterpriseEmail;

    private String enterpriseWebsite;

    private String enterpriseScale;

    private String enterpriseNature;

    private Integer enterpriseRoleId;

    private String enterpriseIndustryName;

    private String enterpriseState;

    private String enterpriseDesc;

    public positionandenterprise(Integer positionId, String positionName, String positionAddress, String positionTime, String positionNum, String positionEdu, String positionExperience, String positionSalary, Date positionStartTime, Date positionEndTime, Date positionEditTime, Integer positionEnterpriseId, String positionPublishState, String positionState, String positionDesc, String positionDuty, Integer enterpriseId, String enterpriseName, String enterprisePassword, String enterpriseUsername, String enterpriseAddress, String enterpriseContact, String enterprisePhone, String enterpriseEmail, String enterpriseWebsite, String enterpriseScale, String enterpriseNature, Integer enterpriseRoleId, String enterpriseIndustryName, String enterpriseState, String enterpriseDesc) {
        super(positionId, positionName, positionAddress, positionTime, positionNum, positionEdu, positionExperience, positionSalary, positionStartTime, positionEndTime, positionEditTime, positionEnterpriseId, positionPublishState, positionState, positionDesc, positionDuty);
        this.enterpriseId = enterpriseId;
        this.enterpriseName = enterpriseName;
        this.enterprisePassword = enterprisePassword;
        this.enterpriseUsername = enterpriseUsername;
        this.enterpriseAddress = enterpriseAddress;
        this.enterpriseContact = enterpriseContact;
        this.enterprisePhone = enterprisePhone;
        this.enterpriseEmail = enterpriseEmail;
        this.enterpriseWebsite = enterpriseWebsite;
        this.enterpriseScale = enterpriseScale;
        this.enterpriseNature = enterpriseNature;
        this.enterpriseRoleId = enterpriseRoleId;
        this.enterpriseIndustryName = enterpriseIndustryName;
        this.enterpriseState = enterpriseState;
        this.enterpriseDesc = enterpriseDesc;
    }

    public positionandenterprise() {
        super();
    }

    public Integer getEnterpriseId() {
        return enterpriseId;
    }

    public void setEnterpriseId(Integer enterpriseId) {
        this.enterpriseId = enterpriseId;
    }

    public String getEnterpriseName() {
        return enterpriseName;
    }

    public void setEnterpriseName(String enterpriseName) {
        this.enterpriseName = enterpriseName;
    }

    public String getEnterprisePassword() {
        return enterprisePassword;
    }

    public void setEnterprisePassword(String enterprisePassword) {
        this.enterprisePassword = enterprisePassword;
    }

    public String getEnterpriseUsername() {
        return enterpriseUsername;
    }

    public void setEnterpriseUsername(String enterpriseUsername) {
        this.enterpriseUsername = enterpriseUsername;
    }

    public String getEnterpriseAddress() {
        return enterpriseAddress;
    }

    public void setEnterpriseAddress(String enterpriseAddress) {
        this.enterpriseAddress = enterpriseAddress;
    }

    public String getEnterpriseContact() {
        return enterpriseContact;
    }

    public void setEnterpriseContact(String enterpriseContact) {
        this.enterpriseContact = enterpriseContact;
    }

    public String getEnterprisePhone() {
        return enterprisePhone;
    }

    public void setEnterprisePhone(String enterprisePhone) {
        this.enterprisePhone = enterprisePhone;
    }

    public String getEnterpriseEmail() {
        return enterpriseEmail;
    }

    public void setEnterpriseEmail(String enterpriseEmail) {
        this.enterpriseEmail = enterpriseEmail;
    }

    public String getEnterpriseWebsite() {
        return enterpriseWebsite;
    }

    public void setEnterpriseWebsite(String enterpriseWebsite) {
        this.enterpriseWebsite = enterpriseWebsite;
    }

    public String getEnterpriseScale() {
        return enterpriseScale;
    }

    public void setEnterpriseScale(String enterpriseScale) {
        this.enterpriseScale = enterpriseScale;
    }

    public String getEnterpriseNature() {
        return enterpriseNature;
    }

    public void setEnterpriseNature(String enterpriseNature) {
        this.enterpriseNature = enterpriseNature;
    }

    public Integer getEnterpriseRoleId() {
        return enterpriseRoleId;
    }

    public void setEnterpriseRoleId(Integer enterpriseRoleId) {
        this.enterpriseRoleId = enterpriseRoleId;
    }

    public String getEnterpriseIndustryName() {
        return enterpriseIndustryName;
    }

    public void setEnterpriseIndustryName(String enterpriseIndustryName) {
        this.enterpriseIndustryName = enterpriseIndustryName;
    }

    public String getEnterpriseState() {
        return enterpriseState;
    }

    public void setEnterpriseState(String enterpriseState) {
        this.enterpriseState = enterpriseState;
    }

    public String getEnterpriseDesc() {
        return enterpriseDesc;
    }

    public void setEnterpriseDesc(String enterpriseDesc) {
        this.enterpriseDesc = enterpriseDesc;
    }
}

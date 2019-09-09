package cn.ganin.pojo;

public class enterprise {
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

    public enterprise(Integer enterpriseId, String enterpriseName, String enterprisePassword, String enterpriseUsername, String enterpriseAddress, String enterpriseContact, String enterprisePhone, String enterpriseEmail, String enterpriseWebsite, String enterpriseScale, String enterpriseNature, Integer enterpriseRoleId, String enterpriseIndustryName, String enterpriseState, String enterpriseDesc) {
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

    public enterprise() {
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
        this.enterpriseName = enterpriseName == null ? null : enterpriseName.trim();
    }

    public String getEnterprisePassword() {
        return enterprisePassword;
    }

    public void setEnterprisePassword(String enterprisePassword) {
        this.enterprisePassword = enterprisePassword == null ? null : enterprisePassword.trim();
    }

    public String getEnterpriseUsername() {
        return enterpriseUsername;
    }

    public void setEnterpriseUsername(String enterpriseUsername) {
        this.enterpriseUsername = enterpriseUsername == null ? null : enterpriseUsername.trim();
    }

    public String getEnterpriseAddress() {
        return enterpriseAddress;
    }

    public void setEnterpriseAddress(String enterpriseAddress) {
        this.enterpriseAddress = enterpriseAddress == null ? null : enterpriseAddress.trim();
    }

    public String getEnterpriseContact() {
        return enterpriseContact;
    }

    public void setEnterpriseContact(String enterpriseContact) {
        this.enterpriseContact = enterpriseContact == null ? null : enterpriseContact.trim();
    }

    public String getEnterprisePhone() {
        return enterprisePhone;
    }

    public void setEnterprisePhone(String enterprisePhone) {
        this.enterprisePhone = enterprisePhone == null ? null : enterprisePhone.trim();
    }

    public String getEnterpriseEmail() {
        return enterpriseEmail;
    }

    public void setEnterpriseEmail(String enterpriseEmail) {
        this.enterpriseEmail = enterpriseEmail == null ? null : enterpriseEmail.trim();
    }

    public String getEnterpriseWebsite() {
        return enterpriseWebsite;
    }

    public void setEnterpriseWebsite(String enterpriseWebsite) {
        this.enterpriseWebsite = enterpriseWebsite == null ? null : enterpriseWebsite.trim();
    }

    public String getEnterpriseScale() {
        return enterpriseScale;
    }

    public void setEnterpriseScale(String enterpriseScale) {
        this.enterpriseScale = enterpriseScale == null ? null : enterpriseScale.trim();
    }

    public String getEnterpriseNature() {
        return enterpriseNature;
    }

    public void setEnterpriseNature(String enterpriseNature) {
        this.enterpriseNature = enterpriseNature == null ? null : enterpriseNature.trim();
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
        this.enterpriseIndustryName = enterpriseIndustryName == null ? null : enterpriseIndustryName.trim();
    }

    public String getEnterpriseState() {
        return enterpriseState;
    }

    public void setEnterpriseState(String enterpriseState) {
        this.enterpriseState = enterpriseState == null ? null : enterpriseState.trim();
    }

    public String getEnterpriseDesc() {
        return enterpriseDesc;
    }

    public void setEnterpriseDesc(String enterpriseDesc) {
        this.enterpriseDesc = enterpriseDesc == null ? null : enterpriseDesc.trim();
    }
}
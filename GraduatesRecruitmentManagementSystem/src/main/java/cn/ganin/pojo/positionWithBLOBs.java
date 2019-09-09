package cn.ganin.pojo;
import java.util.Date;
public class positionWithBLOBs extends position {
    private String positionDesc;

    private String positionDuty;

    public positionWithBLOBs(Integer positionId, String positionName, String positionAddress, String positionTime, String positionNum, String positionEdu, String positionExperience, String positionSalary, Date positionStartTime, Date positionEndTime, Date positionEditTime, Integer positionEnterpriseId, String positionPublishState, String positionState, String positionDesc, String positionDuty) {
        super(positionId, positionName, positionAddress, positionTime, positionNum, positionEdu, positionExperience, positionSalary, positionStartTime, positionEndTime, positionEditTime, positionEnterpriseId, positionPublishState, positionState);
        this.positionDesc = positionDesc;
        this.positionDuty = positionDuty;
    }

    public positionWithBLOBs() {
        super();
    }

    public String getPositionDesc() {
        return positionDesc;
    }

    public void setPositionDesc(String positionDesc) {
        this.positionDesc = positionDesc == null ? null : positionDesc.trim();
    }

    public String getPositionDuty() {
        return positionDuty;
    }

    public void setPositionDuty(String positionDuty) {
        this.positionDuty = positionDuty == null ? null : positionDuty.trim();
    }
}
package cn.ganin.entity;

public class Recruit {
    private int recruit_id;
    private int recruit_position_id;
    private int recruit_enterprise_id;
    private int recruit_resum_id;
    private String recruit_state;

    public String getRecruit_state() {
        return recruit_state;
    }

    public void setRecruit_state(String recruit_state) {
        this.recruit_state = recruit_state;
    }

    public int getRecruit_id() {
        return recruit_id;
    }

    public void setRecruit_id(int recruit_id) {
        this.recruit_id = recruit_id;
    }

    public int getRecruit_position_id() {
        return recruit_position_id;
    }

    public void setRecruit_position_id(int recruit_position_id) {
        this.recruit_position_id = recruit_position_id;
    }

    public int getRecruit_enterprise_id() {
        return recruit_enterprise_id;
    }

    public void setRecruit_enterprise_id(int recruit_enterprise_id) {
        this.recruit_enterprise_id = recruit_enterprise_id;
    }

    public int getRecruit_resum_id() {
        return recruit_resum_id;
    }

    public void setRecruit_resum_id(int recruit_resum_id) {
        this.recruit_resum_id = recruit_resum_id;
    }

    @Override
    public String toString() {
        return "Recruit{" +
                "recruit_id=" + recruit_id +
                ", recruit_position_id=" + recruit_position_id +
                ", recruit_enterprise_id=" + recruit_enterprise_id +
                ", recruit_resum_id=" + recruit_resum_id +
                '}';
    }
}

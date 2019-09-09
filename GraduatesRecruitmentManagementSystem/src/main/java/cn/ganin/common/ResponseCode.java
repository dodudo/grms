package cn.ganin.common;

/**
 * 枚举类型
 * @Author agamgn
 * @Date 2019-04-27
 **/
public enum ResponseCode {

    SUCCESS(0,"SUCCESS"),
    ERROR(1,"ERROR"),
    NEED_LOGIN(10,"NEED_LOGIN"),
    //    参数错误
    ILLEGAL_ARGUMENT(2,"ILLEGAL_ARGUMENT");



    private final int code;
    private final String desc;

    ResponseCode(int code,String desc){
        this.code=code;
        this.desc=desc;
    }
    public int getCode() {
        return code;
    }

    public String getDesc() {
        return desc;
    }

}

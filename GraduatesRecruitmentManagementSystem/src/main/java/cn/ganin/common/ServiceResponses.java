package cn.ganin.common;



import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.annotate.JsonSerialize;

import java.io.Serializable;

/**
 * 服务端响应对象
 * @Author agamgn
 * @Date 2019-05-11
 **/

@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class ServiceResponses<T> implements Serializable {

    private int status;
    private String msg;
    private T data;

    private ServiceResponses(int status){
        this.status=status;
    }
    private ServiceResponses(int status, T data){
        this.status=status;
        this.data=data;
    }
    private ServiceResponses(int status, String msg, T data){
        this.status=status;
        this.msg=msg;
        this.data=data;
    }

    private ServiceResponses(int status, String msg){
        this.status=status;
        this.msg=msg;
    }

    @JsonIgnore
//    使之不在json序列化结果中
    public boolean isSuccess(){
        return this.status==ResponseCode.SUCCESS.getCode();
    }
    public int getStatus(){
        return status;
    }
    public T getData(){
        return data;
    }
    public String getMsg(){
        return msg;
    }

    //开放成功的的接口
    public static <T> ServiceResponses<T> createBySuccess(){
        return new ServiceResponses<T>(ResponseCode.SUCCESS.getCode());
    }
    public static <T> ServiceResponses<T> createBySuccessMessage(String msg){
        return new ServiceResponses<T>(ResponseCode.SUCCESS.getCode(),msg);
    }
    public static <T> ServiceResponses<T> createBySuccess(T data){
        return new ServiceResponses<T>(ResponseCode.SUCCESS.getCode(),data);
    }
    public static <T> ServiceResponses<T> createBySuccess(String msg, T data){
        return new ServiceResponses<T>(ResponseCode.SUCCESS.getCode(),msg,data);
    }

    //开放失败的的接口
    public static <T> ServiceResponses<T> createByErroe(){
        return new ServiceResponses<T>(ResponseCode.ERROR.getCode(),ResponseCode.ERROR.getDesc());
    }

    //    返回提示
    public static <T> ServiceResponses<T> createByErroeMessage(String errorMessage){
        return new ServiceResponses<T>(ResponseCode.ERROR.getCode(),errorMessage);
    }

    public static <T> ServiceResponses<T> createByErroeCodeMessage(int errorcode, String errorMessage){
        return new ServiceResponses<T>(errorcode,errorMessage);
    }

}

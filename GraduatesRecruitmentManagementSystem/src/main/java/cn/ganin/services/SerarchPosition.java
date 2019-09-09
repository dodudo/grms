package cn.ganin.services;

import cn.ganin.common.ServiceResponses;
import cn.ganin.pojo.resumeWithBLOBs;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @Author agamgn
 * @Date 2019-05-11
 **/
public interface SerarchPosition {
    ServiceResponses<PageInfo> serarchposition(String position_name);
    ServiceResponses<PageInfo> serarchpositions();
    ServiceResponses details(Integer id);
    ServiceResponses apply(Integer positionId,Integer stuId,Integer enId,Integer resumeId);
    ServiceResponses<List<resumeWithBLOBs>> position(Integer id);

}

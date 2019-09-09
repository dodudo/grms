package cn.ganin.services.impl;


import cn.ganin.common.ServiceResponses;
import cn.ganin.dao.resumeMapper;
import cn.ganin.pojo.position;
import cn.ganin.pojo.positionandenterprise;
import cn.ganin.pojo.*;
import cn.ganin.services.SerarchPosition;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import cn.ganin.dao.positionMapper;

import java.util.List;

/**
 * @Author agamgn
 * @Date 2019-05-11
 **/
@Service("searchPosition")
public class SerarchPositionImpl implements SerarchPosition {



    @Autowired
    private positionMapper positionMapper;

    @Autowired
    private resumeMapper resumeMapper;

    /**
     * 搜索相关的
     * @param position_name
     * @return
     */
    @Override
    public ServiceResponses<PageInfo> serarchposition(String position_name) {
        System.out.println("*//////////////////////////*");
        String sql="select * from position join enterprise on position.position_enterprise_id=enterprise.enterprise_id where position.position_name LIKE '%"+position_name+"%'";
//        String sql="select * from position";
        System.out.println(sql);
        List<position> pos=positionMapper.searchByName(sql);
        System.out.println("职位"+pos.toString());
        PageInfo pageInfo=new PageInfo(pos);
        return ServiceResponses.createBySuccess("success",pageInfo);
    }

    /**
     * 搜索所有的
     * @return
     */
    @Override
    public ServiceResponses<PageInfo> serarchpositions() {
//        String sql="select position.position_name,position.position_enterprise_id from position join enterprise on position.position_enterprise_id=enterprise.enterprise_id";
        String sql="select * from position join enterprise on position.position_enterprise_id=enterprise.enterprise_id";
//        String sql="select * from position";
        List<positionandenterprise> pos=positionMapper.searchAll(sql);
        System.out.println(sql);
        PageInfo pageInfo=new PageInfo(pos);
        System.out.println("*************/////////////**********");
        return ServiceResponses.createBySuccess("success",pageInfo);
    }

    /**
     * 详情
     * @param id
     * @return
     */
    public ServiceResponses details(Integer id){
        String sql="select * from position join enterprise on position.position_enterprise_id=enterprise.enterprise_id where position.position_id="+id;
        List<positionandenterprise> pos=positionMapper.details(sql);
        System.out.println(pos);
        return ServiceResponses.createBySuccess("success",pos);

    }

    /**
     * 投递
     * @param positionId
     * @param stuId
     * @return
     */
    public ServiceResponses apply(Integer positionId,Integer stuId,Integer enId,Integer resumeId){
        String sql="insert into recruit(recruit_position_id,recruit_stu_id,recruit_enterprise_id,recruit_resum_id,recruit_state) VALUES ("+positionId+","+stuId+","+enId+","+resumeId+",'未查看')";
        List<positionandenterprise> pos=positionMapper.apples(sql);
        return ServiceResponses.createBySuccess("投递成功",pos);
    }

    public ServiceResponses position(Integer id){

        List<resumeWithBLOBs> resumeWithBLOB=resumeMapper.selectByPrimaryKey(id);
        System.out.println("************************************************");
        System.out.println(resumeWithBLOB);
        return ServiceResponses.createBySuccess("投递成功",resumeWithBLOB);
    }
}

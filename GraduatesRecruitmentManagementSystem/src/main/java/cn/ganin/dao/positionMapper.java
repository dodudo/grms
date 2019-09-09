package cn.ganin.dao;

import cn.ganin.pojo.position;
import cn.ganin.pojo.positionWithBLOBs;
import cn.ganin.pojo.positionandenterprise;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface positionMapper {
    int deleteByPrimaryKey(Integer positionId);

    int insert(positionWithBLOBs record);

    int insertSelective(positionWithBLOBs record);

    positionWithBLOBs selectByPrimaryKey(Integer positionId);

    int updateByPrimaryKeySelective(positionWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(positionWithBLOBs record);

    int updateByPrimaryKey(position record);


//    List<position> searchByName(@Param("name") String name);
    List<position> searchByName(@Param("sql") String name);

    List<positionandenterprise> searchAll(@Param("sql") String sql);
    List<positionandenterprise> details(@Param("sql") String sql);
    List<positionandenterprise> apples(@Param("sql") String sql);
}
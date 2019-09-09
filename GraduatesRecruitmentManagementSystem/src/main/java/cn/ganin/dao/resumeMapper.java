package cn.ganin.dao;


import cn.ganin.pojo.*;

import java.util.List;

public interface resumeMapper {



    List<resumeWithBLOBs> selectByPrimaryKey(Integer id);


}
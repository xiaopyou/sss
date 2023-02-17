package com.huarui.qyl.mapper;


import com.huarui.entity.SysRight;
import org.apache.ibatis.annotations.Param;
//@Param定义一个名字用来传值给mybatis#{roleId}
//为什么要用因为如果是基本类型传多个要定义多个名字

import java.util.List;

public interface SysRightMapper {
    public List<SysRight> gonnp(@Param("roleId") Integer roleId, @Param("rightParentId") Integer rightParentId);//通过前端登录的角色来看他可用的功能
}


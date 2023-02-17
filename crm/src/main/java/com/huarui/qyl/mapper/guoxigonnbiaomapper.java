package com.huarui.qyl.mapper;

import com.huarui.entity.guoxigonnbiao;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface guoxigonnbiaomapper {
    public List<guoxigonnbiao> guox(@Param("roleId") Integer roleId, @Param("rightParentId") Integer rightParentId);//@Param("roleId") Integer roleId, @Param("rightParentId") Integer rightParentId
    public List<guoxigonnbiao> guox2(@Param("roleId") Integer roleId, @Param("Right_code") Integer Right_code);
}

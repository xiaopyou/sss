package com.huarui.qyl.service;

import com.huarui.entity.SysUser;
import com.huarui.util.RespEntity;
import org.springframework.web.bind.annotation.RequestBody;

public interface SysUserService {
    public RespEntity queryUser( SysUser user);
}

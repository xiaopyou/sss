package com.huarui.qyl.controller;

import com.huarui.entity.SysUser;
import com.huarui.qyl.service.SysUserService;
import com.huarui.util.RespEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("souye")
public class SysUserController {
    @Autowired
    SysUserService sus;
    @PostMapping("/dlu")
    public RespEntity queryUser( @RequestBody SysUser user ){
        System.out.println("登录:"+user);
        try {
            return sus.queryUser(user);
        }catch (Exception e){
            e.printStackTrace();
        }
        return new RespEntity(50001,"登录失败！请联系管理员！");
    }
    @GetMapping()
    public RespEntity souye(){

        return new RespEntity(null);
    }
}

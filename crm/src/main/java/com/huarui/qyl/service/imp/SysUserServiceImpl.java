package com.huarui.qyl.service.imp;

import com.huarui.entity.SysRight;
import com.huarui.entity.SysRole;
import com.huarui.entity.SysUser;
import com.huarui.entity.guoxigonnbiao;
import com.huarui.qyl.mapper.SysRightMapper;
import com.huarui.qyl.mapper.SysRoleMapper;
import com.huarui.qyl.mapper.SysUserMapper;

import com.huarui.qyl.mapper.guoxigonnbiaomapper;
import com.huarui.qyl.pojo.DTO.SysUserDTO;
import com.huarui.qyl.service.SysUserService;
import com.huarui.util.RespEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    SysUserMapper sum;
    @Autowired
    SysRoleMapper role;
    @Autowired
    SysRightMapper rig;
    @Autowired
    guoxigonnbiaomapper guo;





    @Override
    public RespEntity queryUser(SysUser user) {
        System.out.println("jlail"+user.getUsrPassword());
        SysUser sysUser= sum.queryUser(user.getUsrId());
        System.out.println(sysUser.getUsrId()+sysUser.getUsrPassword());
        if (sysUser==null)
        {
            return new RespEntity(2222,"用户不存在",2,null);

        }
        if (!sysUser.getUsrPassword().equals(user.getUsrPassword())){
            return new RespEntity(3333,"用户或者密码错误",3,null);
        }
        if (sysUser.getUsrFlag()==2){

            return new RespEntity(4444,"用户禁用",4,null);
        }
            //得到用户的角色
         SysRole sysRole= role.qxian(sysUser.getUsrRoleId()) ;
        System.out.println("----"+sysRole.getRoleId());
        //通过用户的角色来看他的所有父功能权限这个sql语句的结果是得出他父组件下的所有子组件在通过所有的子组件得到子组件的孙子组件         功能权限
      List<SysRight> rights= rig.gonnp(sysRole.getRoleId(),0);//登录人的角色 和他的所有父功能
////        List<guoxigonnbiao>  rights= guo.guox(sysRole.getRoleId(),0);
////        List<guoxigonnbiao>  rights= guo.guox();
//        List<guoxigonnbiao>  rights= rig.guox(sysRole.getRoleId(),0);
        System.out.println("-----"+rights.toString());
                  //循环
        //封装成成父子关系的菜单
        List<guoxigonnbiao> ls=new ArrayList<>();
        for (SysRight r : rights){

//            List<guoxigonnbiao>  right = guo.guox2(r.getRF_ROLE_ID(),r.getRF_RIGHT_CODE());//r.getRf_role_id(),r.getRight_code()
//            System.out.println(right.toString());
//            ls.add((guoxigonnbiao) right);


        }

        SysUserDTO userDTO=new SysUserDTO(sysUser,sysRole,ls);
        return new RespEntity(userDTO);


    }
}

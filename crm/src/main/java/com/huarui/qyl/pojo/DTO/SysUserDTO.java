package com.huarui.qyl.pojo.DTO;

import com.huarui.entity.SysRole;
import com.huarui.entity.SysUser;
import com.huarui.entity.guoxigonnbiao;

import java.util.List;

public class SysUserDTO {
    private SysUser user;
    private SysRole role;
    private List<guoxigonnbiao> rights;

    public SysUserDTO(SysUser user, SysRole role, List<guoxigonnbiao> rights) {
        this.user = user;
        this.role = role;
        this.rights = rights;
    }

    public SysUserDTO() {
    }

    public SysUser getUser() {
        return user;
    }

    public void setUser(SysUser user) {
        this.user = user;
    }

    public SysRole getRole() {
        return role;
    }

    public void setRole(SysRole role) {
        this.role = role;
    }

    public List<guoxigonnbiao> getRights() {
        return rights;
    }

    public void setRights(List<guoxigonnbiao> rights) {
        this.rights = rights;
    }
}

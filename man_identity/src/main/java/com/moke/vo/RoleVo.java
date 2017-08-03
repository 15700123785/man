package com.moke.vo;

/**
 * 
 * @ClassName: RoleVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:30:07
 *
 */
public class RoleVo {
    private Integer id;//主键

    private String roleName;//角色名

    private String roleCode;//角色code

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName == null ? null : roleName.trim();
    }

    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode == null ? null : roleCode.trim();
    }
}
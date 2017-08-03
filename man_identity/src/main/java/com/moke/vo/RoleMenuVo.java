package com.moke.vo;

/**
 * 
 * @ClassName: RoleMenuVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:29:58
 *
 */
public class RoleMenuVo {
    private Integer id;//主键

    private Integer roleId;//角色id

    private Integer menuId;//菜单id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
}
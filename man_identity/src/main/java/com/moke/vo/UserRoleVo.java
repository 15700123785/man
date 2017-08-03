package com.moke.vo;

/**
 * 
 * @ClassName: UserRoleVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:29:32
 *
 */
public class UserRoleVo {
    private Integer id;//主键

    private Integer roleId;//角色id

    private Integer userId;//用户id

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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
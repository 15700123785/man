package com.moke.vo;

/**
 * 
 * @ClassName: MenuVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:29:12
 *
 */
public class MenuVo {
    private Integer id;//主键

    private String menuName;//菜单名

    private String menuDes;//描述

    private String menuUrl;//菜单url

    private Integer menuParentId;//父菜单

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getMenuDes() {
        return menuDes;
    }

    public void setMenuDes(String menuDes) {
        this.menuDes = menuDes == null ? null : menuDes.trim();
    }

    public String getMenuUrl() {
        return menuUrl;
    }

    public void setMenuUrl(String menuUrl) {
        this.menuUrl = menuUrl == null ? null : menuUrl.trim();
    }

    public Integer getMenuParentId() {
        return menuParentId;
    }

    public void setMenuParentId(Integer menuParentId) {
        this.menuParentId = menuParentId;
    }
}
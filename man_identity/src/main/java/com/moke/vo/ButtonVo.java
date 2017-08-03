package com.moke.vo;

/**
 * 
 * @ClassName: ButtonVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:28:52
 *
 */
public class ButtonVo {
    private Integer id;//主键

    private String btnName;//按钮名

    private String btnIcon;//按钮图标

    private String btnDes;//按钮描述

    private Integer menuId;//菜单id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBtnName() {
        return btnName;
    }

    public void setBtnName(String btnName) {
        this.btnName = btnName == null ? null : btnName.trim();
    }

    public String getBtnIcon() {
        return btnIcon;
    }

    public void setBtnIcon(String btnIcon) {
        this.btnIcon = btnIcon == null ? null : btnIcon.trim();
    }

    public String getBtnDes() {
        return btnDes;
    }

    public void setBtnDes(String btnDes) {
        this.btnDes = btnDes == null ? null : btnDes.trim();
    }

    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
}
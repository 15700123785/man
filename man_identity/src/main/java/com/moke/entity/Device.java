package com.moke.entity;

public class Device {
    private Integer id;//主键

    private String deviceName;//设备名

    private String deviceNo;//设备号

    private String deviceArea;//所属区域

    private String deviceDesk;//窗口

    private String deviceType;//类型

    private Integer userId;//操作员id
    
    private String name;//操作员名

    public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDeviceName() {
        return deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName == null ? null : deviceName.trim();
    }

    public String getDeviceNo() {
        return deviceNo;
    }

    public void setDeviceNo(String deviceNo) {
        this.deviceNo = deviceNo == null ? null : deviceNo.trim();
    }

    public String getDeviceArea() {
        return deviceArea;
    }

    public void setDeviceArea(String deviceArea) {
        this.deviceArea = deviceArea == null ? null : deviceArea.trim();
    }

    public String getDeviceDesk() {
        return deviceDesk;
    }

    public void setDeviceDesk(String deviceDesk) {
        this.deviceDesk = deviceDesk == null ? null : deviceDesk.trim();
    }

    public String getDeviceType() {
        return deviceType;
    }

    public void setDeviceType(String deviceType) {
        this.deviceType = deviceType == null ? null : deviceType.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}
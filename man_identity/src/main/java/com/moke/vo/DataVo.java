package com.moke.vo;

import java.io.Serializable;

/**
 * 数据列表vo
 * @ClassName: DataVo
 * @Description: TODO
 * @author wzj
 * @date 2016年12月21日 上午11:01:57
 *
 */
public class DataVo implements Serializable{
	private int id;
	
	private String name;//名称
	
	private String idcardNo;//身份证号
	
	private String serviceNo;//业务申请单号
	
	private String deviceNo;//设备号
	
	private String username;
	
	private Boolean isPass;//是否通过

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdcardNo() {
		return idcardNo;
	}

	public void setIdcardNo(String idcardNo) {
		this.idcardNo = idcardNo;
	}

	public String getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(String serviceNo) {
		this.serviceNo = serviceNo;
	}

	public String getDeviceNo() {
		return deviceNo;
	}

	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Boolean getIsPass() {
		return isPass;
	}

	public void setIsPass(Boolean isPass) {
		this.isPass = isPass;
	} 
	
	
}

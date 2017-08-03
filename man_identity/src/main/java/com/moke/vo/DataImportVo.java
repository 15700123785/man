package com.moke.vo;

public class DataImportVo {
	private String cardImgFilePath;//身份证图片路径
	
	private String cameraImgFilePath;//摄像头图片路径
	
	private String dataFilePath;
	
	private String deviceNo;//设备号

	public String getCardImgFilePath() {
		return cardImgFilePath;
	}

	public void setCardImgFilePath(String cardImgFilePath) {
		this.cardImgFilePath = cardImgFilePath;
	}

	public String getCameraImgFilePath() {
		return cameraImgFilePath;
	}

	public void setCameraImgFilePath(String cameraImgFilePath) {
		this.cameraImgFilePath = cameraImgFilePath;
	}

	public String getDataFilePath() {
		return dataFilePath;
	}

	public void setDataFilePath(String dataFilePath) {
		this.dataFilePath = dataFilePath;
	}

	public String getDeviceNo() {
		return deviceNo;
	}

	public void setDeviceNo(String deviceNo) {
		this.deviceNo = deviceNo;
	}
	
	
}

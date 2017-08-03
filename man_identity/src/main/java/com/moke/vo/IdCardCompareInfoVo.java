package com.moke.vo;

import java.util.Date;

public class IdCardCompareInfoVo {

	 	private Integer id;//主键

	    private String name;//姓名

	    private String sex;//性别

	    private String nation;//民族

	    private String idNo;//身份证号

	    private String birthday;//生日

	    private String address;//户籍地址

	    private String issueOrg;//签发机关

	    private String beginDate;//有效日期起

	    private String endDate;//有效日期止
	    
	    private String imgIdcardName;//身份证图片名

	    private String imgIdcardPath;//身份证图片路径

	    private Date imgIdcardDate;//身份证图片时间

	    private String imgCameraName;//摄像头图片名

	    private String imgCameraPath;//摄像头图片路径

	    private Date imgCameraDate;//摄像头图片时间

	    private Double similarity;//比较值

	    private Boolean ispass;//是否通过

	    private Integer idcardId;//身份证id

	    private String serviceId;//业务申请单号

	    private Integer userId;//用户id

	    private String photoId;//照片id

	    private String deviceNo;//设备号

	    private String personType;//个人类型

	    private Date addTime;//添加时间

	    private Boolean isvalid;//是否有效
	    
	    
	    

		@Override
		public String toString() {
			return "IdCardCompareInfoVo [id=" + id + ", name=" + name
					+ ", sex=" + sex + ", nation=" + nation + ", idNo=" + idNo
					+ ", birthday=" + birthday + ", address=" + address
					+ ", issueOrg=" + issueOrg + ", beginDate=" + beginDate
					+ ", endDate=" + endDate + ", imgIdcardName="
					+ imgIdcardName + ", imgIdcardPath=" + imgIdcardPath
					+ ", imgIdcardDate=" + imgIdcardDate + ", imgCameraName="
					+ imgCameraName + ", imgCameraPath=" + imgCameraPath
					+ ", imgCameraDate=" + imgCameraDate + ", similarity="
					+ similarity + ", ispass=" + ispass + ", idcardId="
					+ idcardId + ", serviceId=" + serviceId + ", userId="
					+ userId + ", photoId=" + photoId + ", deviceNo="
					+ deviceNo + ", personType=" + personType + ", addTime="
					+ addTime + ", isvalid=" + isvalid + "]";
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getSex() {
			return sex;
		}

		public void setSex(String sex) {
			this.sex = sex;
		}

		public String getNation() {
			return nation;
		}

		public void setNation(String nation) {
			this.nation = nation;
		}

		public String getIdNo() {
			return idNo;
		}

		public void setIdNo(String idNo) {
			this.idNo = idNo;
		}

		public String getBirthday() {
			return birthday;
		}

		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}

		public String getAddress() {
			return address;
		}

		public void setAddress(String address) {
			this.address = address;
		}

		public String getIssueOrg() {
			return issueOrg;
		}

		public void setIssueOrg(String issueOrg) {
			this.issueOrg = issueOrg;
		}

		public String getBeginDate() {
			return beginDate;
		}

		public void setBeginDate(String beginDate) {
			this.beginDate = beginDate;
		}

		public String getEndDate() {
			return endDate;
		}

		public void setEndDate(String endDate) {
			this.endDate = endDate;
		}

		public String getImgIdcardName() {
			return imgIdcardName;
		}

		public void setImgIdcardName(String imgIdcardName) {
			this.imgIdcardName = imgIdcardName;
		}

		public String getImgIdcardPath() {
			return imgIdcardPath;
		}

		public void setImgIdcardPath(String imgIdcardPath) {
			this.imgIdcardPath = imgIdcardPath;
		}

		public Date getImgIdcardDate() {
			return imgIdcardDate;
		}

		public void setImgIdcardDate(Date imgIdcardDate) {
			this.imgIdcardDate = imgIdcardDate;
		}

		public String getImgCameraName() {
			return imgCameraName;
		}

		public void setImgCameraName(String imgCameraName) {
			this.imgCameraName = imgCameraName;
		}

		public String getImgCameraPath() {
			return imgCameraPath;
		}

		public void setImgCameraPath(String imgCameraPath) {
			this.imgCameraPath = imgCameraPath;
		}

		public Date getImgCameraDate() {
			return imgCameraDate;
		}

		public void setImgCameraDate(Date imgCameraDate) {
			this.imgCameraDate = imgCameraDate;
		}

		public Double getSimilarity() {
			return similarity;
		}

		public void setSimilarity(Double similarity) {
			this.similarity = similarity;
		}

		public Boolean getIspass() {
			return ispass;
		}

		public void setIspass(Boolean ispass) {
			this.ispass = ispass;
		}

		public Integer getIdcardId() {
			return idcardId;
		}

		public void setIdcardId(Integer idcardId) {
			this.idcardId = idcardId;
		}

		public String getServiceId() {
			return serviceId;
		}

		public void setServiceId(String serviceId) {
			this.serviceId = serviceId;
		}

		public Integer getUserId() {
			return userId;
		}

		public void setUserId(Integer userId) {
			this.userId = userId;
		}

		public String getPhotoId() {
			return photoId;
		}

		public void setPhotoId(String photoId) {
			this.photoId = photoId;
		}

		public String getDeviceNo() {
			return deviceNo;
		}

		public void setDeviceNo(String deviceNo) {
			this.deviceNo = deviceNo;
		}

		public String getPersonType() {
			return personType;
		}

		public void setPersonType(String personType) {
			this.personType = personType;
		}

		public Date getAddTime() {
			return addTime;
		}

		public void setAddTime(Date addTime) {
			this.addTime = addTime;
		}

		public Boolean getIsvalid() {
			return isvalid;
		}

		public void setIsvalid(Boolean isvalid) {
			this.isvalid = isvalid;
		}

}

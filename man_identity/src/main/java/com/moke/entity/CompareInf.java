package com.moke.entity;

import java.io.Serializable;
import java.util.Date;

public class CompareInf implements Serializable{
    private Integer id;//主键

    private String imgIdcardName;//身份证图片名

    private String imgIdcardPath;//身份证图片路径

    private Date imgIdcardDate;//身份证图片时间

    private String imgCameraName;//摄像头图片名

    private String imgCameraPath;//摄像头图片路径

    private Date imgCameraDate;//摄像头图片时间

    private Double similarity;//对比值

    private Boolean ispass;//是否通过

    private Integer idcardId;//身份证号

    private String serviceId;//业务申请单号

    private Integer userId;//操作员id

    private String photoId;//图片id

    private String deviceNo;//终端号

    private String personType;//个人类型

    private Date addTime;//添加时间

    private Boolean isvalid;//是否有效

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getImgIdcardName() {
        return imgIdcardName;
    }

    public void setImgIdcardName(String imgIdcardName) {
        this.imgIdcardName = imgIdcardName == null ? null : imgIdcardName.trim();
    }

    public String getImgIdcardPath() {
        return imgIdcardPath;
    }

    public void setImgIdcardPath(String imgIdcardPath) {
        this.imgIdcardPath = imgIdcardPath == null ? null : imgIdcardPath.trim();
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
        this.imgCameraName = imgCameraName == null ? null : imgCameraName.trim();
    }

    public String getImgCameraPath() {
        return imgCameraPath;
    }

    public void setImgCameraPath(String imgCameraPath) {
        this.imgCameraPath = imgCameraPath == null ? null : imgCameraPath.trim();
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
        this.serviceId = serviceId == null ? null : serviceId.trim();
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
        this.photoId = photoId == null ? null : photoId.trim();
    }

    public String getDeviceNo() {
        return deviceNo;
    }

    public void setDeviceNo(String deviceNo) {
        this.deviceNo = deviceNo == null ? null : deviceNo.trim();
    }

    public String getPersonType() {
        return personType;
    }

    public void setPersonType(String personType) {
        this.personType = personType == null ? null : personType.trim();
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
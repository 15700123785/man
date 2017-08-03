package com.moke.vo;

import java.io.Serializable;
import java.util.Date;

public class UserListVo implements Serializable {
    private Integer id;//主键

    private String accountId;//账号名

    private String password;//密码

    private String name;//姓名

    private String sex;//性别

    private String phone;//电话

    private String address;//户籍地址

    private Date createTime;//创建时间

    private Date lastLoginTime;//最后登录时间
    
    private String roleName;//角色名

    private String roleCode;//角色code
    
    private Integer pageNo;//页数

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getRoleCode() {
		return roleCode;
	}

	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}

	public Integer getPageNo() {
		return pageNo;
	}

	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}

	@Override
	public String toString() {
		return "UserListVo [id=" + id + ", accountId=" + accountId
				+ ", password=" + password + ", name=" + name + ", sex=" + sex
				+ ", phone=" + phone + ", address=" + address + ", createTime="
				+ createTime + ", lastLoginTime=" + lastLoginTime
				+ ", roleName=" + roleName + ", roleCode=" + roleCode
				+ ", pageNo=" + pageNo + "]";
	}


    
}

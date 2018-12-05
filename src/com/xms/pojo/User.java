package com.xms.pojo;

import org.springframework.stereotype.Component;

/**
 * 
 * @类名：User.java
 * @类功能说明：用户类，用于存储用户各类信息
 * @类修改者：
 * @修改日期：
 * @修改说明：
 * @作者：hytao  
 * @创建时间：2018年10月31日 上午11:28:39  
 * @版本：V1.0
 */

@Component("user")
public class User {
	private int userID;//用户ID，自动生成
	private String userName;//用户名
	private String password;//密码
	private String userRealName;//用户真实名字
	private String sex;//性别
	private String userPhone;//手机号码
	private String email;//邮箱
	private String idCardNum;//身份证号
	private int rank;//级别代码

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIdCardNum() {
		return idCardNum;
	}

	public void setIdCardNum(String idCardNum) {
		this.idCardNum = idCardNum;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "User [userID=" + userID + ", userName=" + userName
				+ ", password=" + password + ", userRealName=" + userRealName
				+ ", sex=" + sex + ", userPhone=" + userPhone + ", email="
				+ email + ", idCardNum=" + idCardNum + ", rank=" + rank + "]";
	}

}

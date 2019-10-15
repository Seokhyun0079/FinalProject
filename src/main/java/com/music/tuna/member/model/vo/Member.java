package com.music.tuna.member.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

@Repository
public class Member implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3477841529061047426L;
	
	private String userId;
	private String userPwd;
	private String userName;
	private String nickName;
	private String birthDay;
	private String gender;
	private String email;
	private String phone;
	private String profileIMG;
	private Date enrolldate;
	private Date updatedate;
	private String grade;
	private String status;
	
	public Member() {}

	public Member(String userId, String userPwd, String userName, String nickName, String birthDay, String gender,
			String email, String phone, Date enrolldate, Date updatedate, String grade, String status) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.nickName = nickName;
		this.birthDay = birthDay;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.enrolldate = enrolldate;
		this.updatedate = updatedate;
		this.grade = grade;
		this.status = status;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getNickName() {
		return nickName;
	}

	public String getProfileIMG() {
		return profileIMG;
	}

	public void setProfileIMG(String profileIMG) {
		this.profileIMG = profileIMG;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getEnrolldate() {
		return enrolldate;
	}

	public void setEnrolldate(Date enrolldate) {
		this.enrolldate = enrolldate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", nickName=" + nickName
				+ ", birthDay=" + birthDay + ", gender=" + gender + ", email=" + email + ", phone=" + phone + ", profileIMG="
				+ profileIMG + ", enrolldate=" + enrolldate + ", updatedate=" + updatedate + ", grade=" + grade + ", status="
				+ status + "]";
	}

	

	
	
	
}

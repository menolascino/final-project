package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class User {
	
	
	@Id
	@Column
	private String username;
	@Column
	private String email;
	@Column
	private String phoneNumber;
	@Column
	private String password;
	@Column
	private String retypePassword;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRetypePassword() {
		return retypePassword;
	}
	public void setRetypePassword(String retypePassword) {
		this.retypePassword = retypePassword;
	}
	
	
	
	
}

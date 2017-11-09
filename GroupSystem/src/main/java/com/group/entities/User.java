package com.group.entities;

import java.util.ArrayList;
import java.util.List;

public class User {

	private Integer id;
	private String userName;
	private String password;
	private int age;
	private String phone;
	//身份，0：代表学生 1：代表老师
	private String identity;
	
	//老师与学生加入的群组
	private List<Group> groups = new ArrayList<Group>(); 
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public List<Group> getGroups() {
		return groups;
	}
	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}
	
	public boolean isTeacher() {
		if(identity.equals("1")) {
			return true;
		}
		return false;
	}
	
	public boolean isStudent() {
		if(identity.equals("0")) {
			return true;
		}
		return false;
	}
	
	@Override
	public String toString() {
		return "User [id=" + id + ", userName=" + userName + ", password=" + password + ", age=" + age + ", phone="
				+ phone + ", identity=" + identity + ", groups=" + groups + "]";
	}
	public User(Integer id, String userName, String password, int age, String phone, String identity,
			List<Group> groups) {
		super();
		this.id = id;
		this.userName = userName;
		this.password = password;
		this.age = age;
		this.phone = phone;
		this.identity = identity;
		this.groups = groups;
	}
	public User() {
		super();
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
	
	
	
	
	
	
}

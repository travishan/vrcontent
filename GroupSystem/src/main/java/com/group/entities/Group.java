package com.group.entities;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;



public class Group {

	private Integer id;
	private String groupName;
	private String groupImg;
	private String groupDesc;
	private Date createTime;
	
	//群组包含的学生
	private List<User> stus = new ArrayList<User>();
	//创建群组的老师
	private User teacher;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getGroupImg() {
		return groupImg;
	}
	public void setGroupImg(String groupImg) {
		this.groupImg = groupImg;
	}
	public String getGroupDesc() {
		return groupDesc;
	}
	public void setGroupDesc(String groupDesc) {
		this.groupDesc = groupDesc;
	}
	public List<User> getStus() {
		return stus;
	}
	public void setStus(List<User> stus) {
		this.stus = stus;
	}
	public User getTeacher() {
		return teacher;
	}
	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}
	
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Group [id=" + id + ", groupName=" + groupName + ", groupDesc=" + groupDesc + ", stus=" + stus
				+ ", teacher=" + teacher + "]";
	}
	public Group(Integer id, String groupName, String groupImg, String groupDesc, Date createTime, List<User> stus,
			User teacher) {
		super();
		this.id = id;
		this.groupName = groupName;
		this.groupImg = groupImg;
		this.groupDesc = groupDesc;
		this.createTime = createTime;
		this.stus = stus;
		this.teacher = teacher;
	}
	public Group() {
		super();
	}
	
	
	
	
	
}

package com.group.entities;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Task {
	private Integer id;
	private String taskName;
	private String taskDesc;
	private Date startTime;
	private Date endTime;
	
	//发布任务的老师
	private User teacher;
	
	//要完成任务学生
	private List<User> stus = new ArrayList<User>();

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public String getTaskDesc() {
		return taskDesc;
	}

	public void setTaskDesc(String taskDesc) {
		this.taskDesc = taskDesc;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public User getTeacher() {
		return teacher;
	}

	public void setTeacher(User teacher) {
		this.teacher = teacher;
	}

	public List<User> getStus() {
		return stus;
	}

	public void setStus(List<User> stus) {
		this.stus = stus;
	}

	public Task(Integer id, String taskName, String taskDesc, Date startTime, Date endTime, User teacher,
			List<User> stus) {
		super();
		this.id = id;
		this.taskName = taskName;
		this.taskDesc = taskDesc;
		this.startTime = startTime;
		this.endTime = endTime;
		this.teacher = teacher;
		this.stus = stus;
	}

	public Task() {
		super();
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", taskName=" + taskName + ", taskDesc=" + taskDesc + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", teacher=" + teacher + ", stus=" + stus + "]";
	}
	
	
	
	
	
	

}

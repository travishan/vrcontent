package com.group.entities;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Theme {
	private Integer id;
	private String themeTopic;
	private String content;
	//话题发起人id
	private Integer initiatorId;
	//话题发起人
	private User initiator;
	
	private Date createTime;
	
	//话题所在讨论区
	private Integer forumId;
	
	//当前主题的评论
	private List<Comment> comms = new ArrayList<Comment>(); 

	
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getThemeTopic() {
		return themeTopic;
	}

	public void setThemeTopic(String themeTopic) {
		this.themeTopic = themeTopic;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getInitiatorId() {
		return initiatorId;
	}

	public void setInitiatorId(Integer initiatorId) {
		this.initiatorId = initiatorId;
	}

	public User getInitiator() {
		return initiator;
	}

	public void setInitiator(User initiator) {
		this.initiator = initiator;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getForumId() {
		return forumId;
	}

	public void setForumId(Integer forumId) {
		this.forumId = forumId;
	}
	
	
	

	public List<Comment> getComms() {
		return comms;
	}

	public void setComms(List<Comment> comms) {
		this.comms = comms;
	}

	
	
	@Override
	public String toString() {
		return "Theme [id=" + id + ", themeTopic=" + themeTopic + ", content=" + content + ", initiatorId="
				+ initiatorId + ", initiator=" + initiator + ", createTime=" + createTime + ", forumId=" + forumId
				+ ", comms=" + comms + "]";
	}

	public Theme(Integer id, String themeTopic, String content, Integer initiatorId, User initiator, Date createTime,
			Integer forumId) {
		super();
		this.id = id;
		this.themeTopic = themeTopic;
		this.content = content;
		this.initiatorId = initiatorId;
		this.initiator = initiator;
		this.createTime = createTime;
		this.forumId = forumId;
	}

	public Theme() {
		super();
	}
	
	
	

}

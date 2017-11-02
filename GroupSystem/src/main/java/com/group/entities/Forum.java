package com.group.entities;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;


//讨论区
public class Forum {

	private Integer id;
	private String forumName;
	private Date createTime;
	
	private Integer governorId;
	
	//管理员
	private User governor;
	
	//可以再该讨论区发言的群组
	private List<Group> groups = new ArrayList<Group>();
	
	//当前讨论区内的所有话题
	private List<Theme> themes = new ArrayList<Theme>();

	
	
	
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getForumName() {
		return forumName;
	}

	public void setForumName(String forumName) {
		this.forumName = forumName;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getGovernorId() {
		return governorId;
	}

	public void setGovernorId(Integer governorId) {
		this.governorId = governorId;
	}

	public User getGovernor() {
		return governor;
	}

	public void setGovernor(User governor) {
		this.governor = governor;
	}

	public List<Group> getGroups() {
		return groups;
	}

	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}

	public List<Theme> getThemes() {
		return themes;
	}

	public void setThemes(List<Theme> themes) {
		this.themes = themes;
	}

	@Override
	public String toString() {
		return "Forum [id=" + id + ", forumName=" + forumName + ", createTime=" + createTime + ", governorId="
				+ governorId + ", governor=" + governor + ", groups=" + groups + ", themes=" + themes + "]";
	}

	public Forum(Integer id, String forumName, Date createTime, Integer governorId, User governor, List<Group> groups,
			List<Theme> themes) {
		super();
		this.id = id;
		this.forumName = forumName;
		this.createTime = createTime;
		this.governorId = governorId;
		this.governor = governor;
		this.groups = groups;
		this.themes = themes;
	}

	public Forum() {
		super();
	}
	

	
}

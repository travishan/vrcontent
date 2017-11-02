package com.group.entities;

//����
public class Comment {
	
	private Integer id;
	
	//�����Ǹ������id
	private Integer themeId;
	
	private String content;
	
	//˭���۵�����
	private User user;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getThemeId() {
		return themeId;
	}

	public void setThemeId(Integer themeId) {
		this.themeId = themeId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", themeId=" + themeId + ", content=" + content + ", user=" + user + "]";
	}

	public Comment(Integer id, Integer themeId, String content, User user) {
		super();
		this.id = id;
		this.themeId = themeId;
		this.content = content;
		this.user = user;
	}

	public Comment() {
		super();
	}
	
	
}

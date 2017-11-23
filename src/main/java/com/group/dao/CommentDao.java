package com.group.dao;

import java.util.List;

import com.group.entities.Comment;

public interface CommentDao {
	
	//1.评论某个话题
	public void addCommentForTheme(Comment comm);
	
	//2.查询某个话题的所有评论
	public List<Comment> getCommsByThemeId(Integer themeId);
	
	

}

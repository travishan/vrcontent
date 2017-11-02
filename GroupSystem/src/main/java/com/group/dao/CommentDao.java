package com.group.dao;

import java.util.List;

import com.group.entities.Comment;

public interface CommentDao {
	
	//1.����ĳ������
	public void addCommentForTheme(Comment comm);
	
	//2.��ѯĳ���������������
	public List<Comment> getCommsByThemeId(Integer themeId);
	
	

}

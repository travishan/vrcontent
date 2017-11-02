package com.group.dao;

import java.util.List;

import com.group.entities.Theme;

public interface ThemeDao {

	//1.发布一个讨论主题
	public void addTheme(Theme theme);
	
	//2.查询某个讨论区的所有主题
	public List<Theme> getThemesByForumId(Integer forumId);
	
	//3.删除某个主题
	public void deleteTheme(Integer id);
	
	
	//4.查询某个用户发布的话题
	public List<Theme> getThemesByUserId(Integer uid);
	
	
	
	
	
}

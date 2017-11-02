package com.group.dao;

import java.util.List;

import com.group.entities.Theme;

public interface ThemeDao {

	//1.����һ����������
	public void addTheme(Theme theme);
	
	//2.��ѯĳ������������������
	public List<Theme> getThemesByForumId(Integer forumId);
	
	//3.ɾ��ĳ������
	public void deleteTheme(Integer id);
	
	
	//4.��ѯĳ���û������Ļ���
	public List<Theme> getThemesByUserId(Integer uid);
	
	
	
	
	
}

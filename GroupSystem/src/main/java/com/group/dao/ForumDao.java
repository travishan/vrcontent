package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Forum;
import com.group.entities.Group;

public interface ForumDao {
	
	//1.1:����һ��������,��������û����֮������Ⱥ��
	public void createForum(Forum forum);
	
	//1.2Ϊ�����������Ⱥ��
	public void addGroupsToForum(@Param("groups")List<Group>groups,@Param("forumId")Integer forumId);
	
	
	//3.����Ⱥ��id�鿴
	public Forum getForumByGroupId(Integer gid);
	
	//4.���ݴ�����/����Աid����,�����ж��
	public List<Forum> getForumByGovernorId(Integer governorId);
	
	
	
	
	
	
	
	
	
	
	
	
	

}

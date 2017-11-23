package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Forum;
import com.group.entities.Group;

public interface ForumDao {
	
	//1.1:创建一个讨论区,该讨论区没有与之关联的群组
	public void createForum(Forum forum);
	
	//1.2为空讨论区添加群组
	public void addGroupsToForum(@Param("groups")List<Group>groups,@Param("forumId")Integer forumId);
	
	
	//3.根据群组id查看
	public Forum getForumByGroupId(Integer gid);
	
	//4.根据创建者/管理员id查找,可能有多个
	public List<Forum> getForumByGovernorId(Integer governorId);
	
	
	
	
	
	
	
	
	
	
	
	
	

}

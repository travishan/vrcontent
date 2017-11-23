package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Group;
import com.group.entities.User;

public interface GroupDao {
	
	//1.创建群组
	public void createGroup(Group group);
	
	//2.为群组添加学生
	public void addStuToGroup(@Param("stus")List<User> stus,@Param("groupId")Integer groupId);
	
	//3.修改群的基本信息
	public void updateGroup(Group group);
	
	//4.查询自己创建的所有群组
	public List<Group> getGroups(Integer creatId);
	
	//4.1.根据群组id查询群组内的所有学生
	public List<User> getUsersByGroupId(Integer gid);
	
	//5.根据id查询某个群组
	public Group getGroupById(Integer id);
	
	//6.根据名称搜索群，可以模糊匹配
	public List<Group> getGroupByName(String groupName);

	//7.批量删除某个群组内的学生
	public void deleteStusByGroupId(@Param("gid")int groupId, @Param("stus")List<Integer> stusId);
	
	//8.查询学生加入的群组
	public List<Group> getGroupsByStuId(Integer stuId);
	
	
	
	
}

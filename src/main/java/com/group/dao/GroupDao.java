package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Group;
import com.group.entities.User;

public interface GroupDao {
	
	//1.����Ⱥ��
	public void createGroup(Group group);
	
	//2.ΪȺ�����ѧ��
	public void addStuToGroup(@Param("stus")List<User> stus,@Param("groupId")Integer groupId);
	
	//3.�޸�Ⱥ�Ļ�����Ϣ
	public void updateGroup(Group group);
	
	//4.��ѯ�Լ�����������Ⱥ��
	public List<Group> getGroups(Integer creatId);
	
	//4.1.����Ⱥ��id��ѯȺ���ڵ�����ѧ��
	public List<User> getUsersByGroupId(Integer gid);
	
	//5.����id��ѯĳ��Ⱥ��
	public Group getGroupById(Integer id);
	
	//6.������������Ⱥ������ģ��ƥ��
	public List<Group> getGroupByName(String groupName);

	//7.����ɾ��ĳ��Ⱥ���ڵ�ѧ��
	public void deleteStusByGroupId(@Param("gid")int groupId, @Param("stus")List<Integer> stusId);
	
	//8.��ѯѧ�������Ⱥ��
	public List<Group> getGroupsByStuId(Integer stuId);
	
	
	
	
}

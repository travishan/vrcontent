package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Task;
import com.group.entities.User;

public interface TaskDao {

	//1.1��������
	public void addTask(Task task);
	
	//1.2Ϊ����ָ��ѧ��
	public void addStusToTask(@Param("stus")List<User>stus,@Param("taskId")Integer taskId);

	//1.3Ϊ��ǰ����ָ��Ⱥ��
	public void addGroupsToTask(@Param("gids")List<Integer>gids,@Param("taskId")Integer taskId);
	
	
	
	//�޸�ĳ������
	public void updateTask(Task task);
	
	
	
	//��ѯĳ����ʦ��������������
	public List<Task> getTasksByPublishId(Integer teacherId);
	
	//��ѯĳ��ѧ��������Ҫ��ɵ�����
	public List<Task> getTasksByStuId(Integer stuId);
	
	//��ѯĳ�����������
	public Task getTaskById(Integer taskId);
	
	//��ѯĳ�������ѧ��
	public List<User> getUsersByTaskId(Integer taskId);
	
	//��ѯĳ��Ⱥ�������
	public List<Task> getTaskByGroupId(Integer gid);
	
	
}

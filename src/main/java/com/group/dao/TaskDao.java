package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.group.entities.Task;
import com.group.entities.User;

public interface TaskDao {

	//1.1发布任务：
	public void addTask(Task task);
	
	//1.2为任务指定学生
	public void addStusToTask(@Param("stus")List<User>stus,@Param("taskId")Integer taskId);

	//1.3为当前任务指定群组
	public void addGroupsToTask(@Param("gids")List<Integer>gids,@Param("taskId")Integer taskId);
	
	
	
	//修改某个任务
	public void updateTask(Task task);
	
	
	
	//查询某个老师发布的所有任务
	public List<Task> getTasksByPublishId(Integer teacherId);
	
	//查询某个学生的所有要完成的任务
	public List<Task> getTasksByStuId(Integer stuId);
	
	//查询某个具体的任务
	public Task getTaskById(Integer taskId);
	
	//查询某个任务的学生
	public List<User> getUsersByTaskId(Integer taskId);
	
	//查询某个群组的任务
	public List<Task> getTaskByGroupId(Integer gid);
	
	
}

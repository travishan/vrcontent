package com.group.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group.dao.GroupDao;
import com.group.dao.TaskDao;
import com.group.entities.Group;
import com.group.entities.Task;
import com.group.entities.User;

@Service
public class TaskService {

	@Autowired
	private TaskDao taskDao;
	
	@Autowired
	private GroupDao groupDao;
	
	public void addTaskForGroups(String[] groupId, String taskName, String taskDesc, String startTime, String endTime,
			HttpServletRequest req) {
		
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-mm-dd");
		Date start = null;
		Date end = null;
		try {
			start = sd.parse(startTime);
			end = sd.parse(endTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		User teacher = (User) req.getSession().getAttribute("user");
		
		Task task = new Task(null, taskName, taskDesc, new java.sql.Date(start.getTime()),
				new java.sql.Date(end.getTime()), teacher, null);
		//添加任务
		taskDao.addTask(task);
		
		List <Integer> gids = new ArrayList<Integer>();
		//为所选的组的所有学生添加任务
		for(String gid :groupId) {
			gids.add(Integer.parseInt(gid));
			
			Group group = groupDao.getGroupById(Integer.parseInt(gid));
			List<User> stus = group.getStus();
			if(stus.size() != 0) {
				
			//为指定的学生添加任务
			taskDao.addStusToTask(stus, task.getId());
			}
		}
		
		//把任务添加到所有的群组内
		taskDao.addGroupsToTask(gids, task.getId());
				
		
	}

	public List<Task> getGroupTasks(Integer id) {
		return taskDao.getTasksByStuId(id);
	}

	public List<Task> getgroupTasksByGrouId(Integer id) {
		return taskDao.getTaskByGroupId(id);
	}
	
	

}

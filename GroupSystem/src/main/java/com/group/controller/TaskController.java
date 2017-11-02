package com.group.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.group.service.TaskService;


@Controller
public class TaskController {
	
	@Autowired
	private TaskService taskService;

	@RequestMapping(value = "/task",method=RequestMethod.POST)
	@ResponseBody
	public String addTask(String [] groupId,String taskName,String taskDesc,
			String startTime,String endTime,HttpServletRequest req) {
		taskService.addTaskForGroups(groupId,taskName,taskDesc,startTime,endTime,req);
		return "json:success";
	}
	
	
	
}

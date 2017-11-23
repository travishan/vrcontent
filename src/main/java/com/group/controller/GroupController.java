package com.group.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.group.entities.Group;
import com.group.entities.Task;
import com.group.entities.User;
import com.group.service.GroupService;
import com.group.service.TaskService;

@Controller
@RequestMapping("/group")
public class GroupController {
	
	@Autowired
	private GroupService groupService;
	
	@Autowired
	private TaskService taskService;
	
	//列出教师创建的群组
	/**
	 * @param model
	 * @param req
	 * @return
	 */
	@RequestMapping("/list")
	@ResponseBody
	public List<Group> listGroups(Model model, HttpServletRequest req) {
		User loginUser = (User) req.getSession().getAttribute("user");
		List<Group> groups = groupService.getGroupsByCreateId(loginUser.getId());
		
		//User firstStu = groups.get(0).getStus().get(0);
		//查询群内第一个学生的任务极为该群组的任务，有问题，应该群组与任务有关联；
		//当前一个学生加入好几个群时，只查询一个学生的任务作为群组任务不正确
		//if(firstStu != null) {
		//	List <Task> tasks = taskService.getGroupTasks(firstStu.getId());
		//	model.addAttribute("tasks",tasks);
		//}
		Map<Integer,List<Task>> groupTasks = new HashMap<Integer,List<Task>>();
		for (Group group : groups) {
			List <Task> tasks = taskService.getgroupTasksByGrouId(group.getId());
			groupTasks.put(group.getId(), tasks);
		}
		
		//model.addAttribute("groupTasks",groupTasks);
//		model.addAttribute("groups",groups);
		req.getSession().setAttribute("groups", groups);
		req.getSession().setAttribute("groupTasks", groupTasks);
		return groups;
	}
	
	//管理群组
	@RequestMapping("/manageGroup")
	public String manageGroup(String groupId, Model model, HttpServletRequest req) {
		
		Group group = null; 
		group = groupService.getGroupStusByGroupId(Integer.parseInt(groupId));
		if(group == null) {
			return "error";
		}
		model.addAttribute("group", group);
		User loginUser = (User) req.getSession().getAttribute("user");
		if(loginUser.isTeacher()) {
			return "teacher2";
		} else {
			return "student2";
		}
	}
	
	//创建群组
	@RequestMapping("/create")
	public String createGroup() {
		
		return "createGroup";
	}
	
	@RequestMapping(value= {"/create"},method=RequestMethod.POST)
	public String successCreatedGroup(@RequestParam("groupImg")MultipartFile file,
			String groupName, String groupDesc,HttpServletRequest req) {
		
		//String fileName = file.getOriginalFilename();
		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
		String fileName = System.currentTimeMillis() + suffix;
		String path = req.getServletContext().getRealPath("images");
		File targetFile = new File(path+"/"+fileName);
		try {
			file.transferTo(targetFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
		groupService.createGroup(fileName,groupName,groupDesc,req);
		return "forward:/group/list";
	}
	
	//查看某个群组内所有成员
	@RequestMapping("/stus/{id}")
	public String groupStus(@PathVariable("id") String idStr,Model model) {
		if(idStr.equals("")||idStr==null) {
			return "error";
		}
		int id = 0;
		try {
			id = Integer.parseInt(idStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		Group group = groupService.getGroupStusByGroupId(id);
		model.addAttribute("group", group);
		return "groupStus";
	}
	
	//批量移除群组内的学生
	@RequestMapping(value="/deleteStu",method=RequestMethod.DELETE)
	public String deleteStu(@RequestParam("groupId")String groupIdStr,@RequestParam("stus")String [] stus,
			HttpServletRequest req) {
		System.out.println(groupIdStr);
		System.out.println(stus);
		if(groupIdStr == null || groupIdStr.equals("")) {
			return "error";
		}
		if(stus == null) {
			return "error";
		}
		int groupId = 0;
		List<Integer>stusId = new ArrayList<Integer>();
		
		try {
			groupId = Integer.parseInt(groupIdStr);
			for (String string : stus) {
				stusId.add(Integer.parseInt(string));
				
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		groupService.deleteStusFromGroup(groupId,stusId);
		return "redirect:/group/stus/"+groupId;
	}
	
	//批量添加学生
	@RequestMapping(value="/djq",method=RequestMethod.POST)
	@ResponseBody
	public String addStusToGroup(String groupId,String [] stuId) {
		
		
		int gid = 0;
		List<Integer>stuIds = new ArrayList<Integer>();
		
		try {
			gid = Integer.parseInt(groupId);
			for (String idStr : stuId) {
				stuIds.add(Integer.parseInt(idStr));
			}
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		
		groupService.addStus(gid,stuIds);
		
		return "success";
	}
	
	@RequestMapping(value = "/{id}",method=RequestMethod.GET)
	public String editGroupInfo(@PathVariable("id")String idStr,Model model) {
		int id = 0;
		id = Integer.parseInt(idStr);
		Group group = groupService.getGroupStusByGroupId(id);
		model.addAttribute("group", group);
		return "groupInfo";
	}
	
	@RequestMapping(value = "/{id}",method=RequestMethod.PUT)
	public String UpdateGroup(@PathVariable("id")String idStr,String groupName,String groupDesc,
			@RequestParam("groupImg")MultipartFile file,HttpServletRequest req) {
		String path = req.getServletContext().getRealPath("/images");
		String fileName = file.getOriginalFilename();
		File dest = new File(path+"/"+fileName);

		try {
			file.transferTo(dest);
		} catch (IOException e) {
			e.printStackTrace();
		}
		int id = Integer.parseInt(idStr);
		groupService.updateGroup(id,groupName,groupDesc,fileName);
	
		return "forward:/group/list";
	}
	
	//查询学生加入的群组
	@RequestMapping(value="/myGroups",method=RequestMethod.GET)
	@ResponseBody
	public List<Group> getMyGroups(HttpServletRequest req,Model model) {
		List <Group> myGroups = groupService.getGroupsByStuId(req);
		model.addAttribute("myGroups", myGroups);
		System.out.println(myGroups);
		//return "stu/groups";
		return myGroups;
	}
	
	
	
	
}

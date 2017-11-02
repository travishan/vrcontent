package com.group.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group.dao.GroupDao;
import com.group.entities.Group;
import com.group.entities.User;

@Service
public class GroupService {

	@Autowired
	private GroupDao groupDao;
	
	public List<Group> getGroupsByCreateId(Integer id) {
		return groupDao.getGroups(id);
	}

	public void createGroup(String fileName, String groupName, String groupDesc, HttpServletRequest req) {
		System.out.println(fileName);
		Group group = new Group(null, groupName, fileName, groupDesc, 
				new Date(new java.util.Date().getTime()), null,
				(User) req.getSession().getAttribute("user")) ;
		groupDao.createGroup(group);
	}

	public Group getGroupStusByGroupId(int id) {
		return groupDao.getGroupById(id);
	}

	public void deleteStusFromGroup(int groupId, List<Integer> stusId) {
		groupDao.deleteStusByGroupId(groupId,stusId);
	}

	public void addStus(int gid, List<Integer> stuIds) {
		List <User> stus = new ArrayList<User>();
		User user = null;
		for (Integer stuId : stuIds) {
			user = new User();
			user.setId(stuId);
			stus.add(user);
		}
		groupDao.addStuToGroup(stus, gid);
	}

	public void updateGroup(int id, String groupName, String groupDesc, String fileName) {
		Group group = new Group(id, groupName, fileName, groupDesc, null, null, null);
		groupDao.updateGroup(group);
	}

	public List<Group> getGroupsByStuId(HttpServletRequest req) {
		User loginUser = (User) req.getSession().getAttribute("user");
		Integer stuId = loginUser.getId();
		return groupDao.getGroupsByStuId(stuId);
	}
	

}

package com.group.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.group.dao.GroupDao;
import com.group.dao.UserDao;
import com.group.entities.User;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public User login(String userName,String password) {
		User u = userDao.getUserByName(userName, password);
		return u;
	}
	
	@Autowired
	private GroupDao groupDao;
	
	public List<User> getUsersByCriteria(String criteriaName, String groupId){
		criteriaName = "%"+criteriaName+"%";
		List<User> users = userDao.getUsersByName(criteriaName);
		List<User> groupUsers = groupDao.getUsersByGroupId(Integer.parseInt(groupId));
		for (User user : groupUsers) {
			if(users.contains(user)) {
				users.remove(user);
			}
		}
		return users;
	}
	
}

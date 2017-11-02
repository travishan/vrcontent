package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.group.entities.User;

@Repository
public interface UserDao {
	
	public User getUserByName(@Param("name")String name, @Param("password")String password);
	
	//1.根据用户id查询用户
	public User getUserById(Integer id);
	
	public List<User> getUserByIds(List<Integer> ids);

	//2.根据名字模糊查询学生
	public List<User> getUsersByName(String criteriaName);
	

}

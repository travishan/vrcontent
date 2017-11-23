package com.group.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.group.entities.User;

@Repository
public interface UserDao {
	
	public User getUserByName(@Param("name")String name, @Param("password")String password);
	
	//1.�����û�id��ѯ�û�
	public User getUserById(Integer id);
	
	public List<User> getUserByIds(List<Integer> ids);

	//2.��������ģ����ѯѧ��
	public List<User> getUsersByName(String criteriaName);
	

}

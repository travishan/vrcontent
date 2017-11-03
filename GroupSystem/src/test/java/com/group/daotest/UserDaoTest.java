package com.group.daotest;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.group.dao.GroupDao;
import com.group.dao.UserDao;
import com.group.entities.Group;
import com.group.entities.User;

public class UserDaoTest {
	
	private ApplicationContext ctx = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSessionFactory = ctx.getBean(SqlSessionFactory.class);
	}
	
	@Test
	public void test1() {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao mapper = session.getMapper(UserDao.class);
		List<User> userByIds = mapper.getUserByIds(Arrays.asList(2,3,4));
		System.out.println(userByIds);
		
		
	}
	
	@Test
	public void test2() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		Group group = new Group();
		group.setGroupName("se 22 group");
		group.setGroupDesc("qunzuguanli");
		User u = new User();
		u.setId(2);
		group.setTeacher(u);
		//group.setCreateTime(new Date(new java.util.Date().getTime()));
		mapper.createGroup(group);
		session.commit();
		//group(group_name,group_desc,create_time,create_userid)
		//VALUES('se 22 group','q' at line 1
		//INSERT INTO group(group_name,group_desc,create_time,create_userid) VALUES(?,?,?,?)
	}

	@Test
	public void test3() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		List<User> stus = new ArrayList<User>();
		stus.add(new User(2, null, null, 1, null, "0", null));
		stus.add(new User(3, null, null, 1, null, "0", null));
		stus.add(new User(4, null, null, 1, null, "0", null));
		mapper.addStuToGroup(stus, 1);
	}
		
	@Test
	public void test4() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		Group group = new Group();
		group.setId(2);
		group.setGroupName("sofetsg");
		mapper.updateGroup(group);
	}
	
	@Test
	public void test5() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		List<Group> groups = mapper.getGroups(1);
		for (Group group : groups) {
			System.out.println(group.getId());
		}
		
	}
	
	@Test
	public void test6() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		Group group = mapper.getGroupById(1);
		System.out.println(group);
		
		System.out.println("++++++++++++++++++++++==");
		
		List<Group> groupByName = mapper.getGroupByName("%e%");
		System.out.println(groupByName);
	}
	
	@Test
	public void test7() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		mapper.deleteStusByGroupId(2, Arrays.asList(3,4));
	}
	
	@Test
	public void test8() {
		SqlSession session = sqlSessionFactory.openSession();
		UserDao mapper = session.getMapper(UserDao.class);
		List<User> usersByName = mapper.getUsersByName("%u%");
		System.out.println(usersByName);
	}
	
	@Test
	public void test9() {
		SqlSession session = sqlSessionFactory.openSession();
		GroupDao mapper = session.getMapper(GroupDao.class);
		List<Group> groups = mapper.getGroupsByStuId(4);
		System.out.println(groups);
	}
}

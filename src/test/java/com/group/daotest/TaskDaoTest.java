package com.group.daotest;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.group.dao.TaskDao;
import com.group.dao.UserDao;
import com.group.entities.Task;
import com.group.entities.User;

public class TaskDaoTest {
	private ApplicationContext ctx = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSessionFactory = ctx.getBean(SqlSessionFactory.class);
	}
	
	@Test
	public void test1() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		TaskDao mapper = session.getMapper(TaskDao.class);
		String start = "2017-10-20 ";
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-DD");
		java.util.Date date = df.parse(start);
		User teacher = new User();
		teacher.setId(2);
		Task task = new Task(null, "语文", "背诵唐诗三百首", 
				new Date(new java.util.Date().getTime()), 
				new Date(date.getTime()), teacher, null);
		mapper.addTask(task);
		System.out.println(task.getId());
	}
	
	@Test
	public void test2() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		TaskDao mapper = session.getMapper(TaskDao.class);
		List<User>stus = new ArrayList<User>();
		stus.add(new User(4, null, null, 0, null, null, null));
		stus.add(new User(5, null, null, 0, null, null, null));
		mapper.addStusToTask(stus, 1);
	
	}
	@Test
	public void test3() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		TaskDao mapper = session.getMapper(TaskDao.class);
		List<Task> tasks = mapper.getTasksByStuId(5);
		System.out.println(tasks);
		
	}
	
	
	@Test
	public void test4() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		TaskDao mapper = session.getMapper(TaskDao.class);
		//mapper.addGroupsToTask(Arrays.asList(1,2,3), 1);
		List<Task> taskByGroupId = mapper.getTaskByGroupId(1);
		System.out.println(taskByGroupId);
	}
}

package com.group.daotest;

import java.sql.Date;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.group.dao.ForumDao;
import com.group.entities.Forum;
import com.group.entities.Group;

public class ForumTest {
	
	private ApplicationContext ctx = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSessionFactory = ctx.getBean(SqlSessionFactory.class);
	}
	
	@Test
	public void test1() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		ForumDao mapper = session.getMapper(ForumDao.class);
		Forum forum = new Forum(null, "ÓïÎÄ1", new Date(new java.util.Date().getTime()),
				2, null, null, null);
		mapper.createForum(forum);
		List<Group>groups = new ArrayList<Group>();
		groups.add(new Group(1, null, null, null, null, null, null));
		groups.add(new Group(2, null, null, null, null, null, null));
		groups.add(new Group(3, null, null, null, null, null, null));
		groups.add(new Group(7, null, null, null, null, null, null));
		mapper.addGroupsToForum(groups, forum.getId());
		
	}
	
	@Test
	public void test2() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		ForumDao mapper = session.getMapper(ForumDao.class);
		//Forum forum = mapper.getForumByGroupId(1);
		//System.out.println(forum);
		List<Forum> forumByGovernorId = mapper.getForumByGovernorId(2);
		for (Forum forum : forumByGovernorId) {
			System.out.println(forum);
		}
	}

}

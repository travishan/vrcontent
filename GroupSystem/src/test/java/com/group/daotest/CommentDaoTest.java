package com.group.daotest;

import java.text.ParseException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.group.dao.CommentDao;
import com.group.entities.Comment;
import com.group.entities.User;

public class CommentDaoTest {
	
	private ApplicationContext ctx = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSessionFactory = ctx.getBean(SqlSessionFactory.class);
	}
	
	@Test
	public void test1() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		CommentDao mapper = session.getMapper(CommentDao.class);
		//Comment comm = new Comment(null, 2, "ÖÐ¹úºÃ", new User(5, null, null, 0, null, null, null));
		//mapper.addCommentForTheme(comm);
		List<Comment> comms = mapper.getCommsByThemeId(2);
		System.out.println(comms);
	}
	

}

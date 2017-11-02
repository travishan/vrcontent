package com.group.daotest;

import java.text.ParseException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.group.dao.ThemeDao;
import com.group.entities.Theme;

public class ThemeDaoTest {
	private ApplicationContext ctx = null;
	private SqlSessionFactory sqlSessionFactory = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		sqlSessionFactory = ctx.getBean(SqlSessionFactory.class);
	}
	
	@Test
	public void test1() throws ParseException {
		SqlSession session = sqlSessionFactory.openSession();
		ThemeDao mapper = session.getMapper(ThemeDao.class);
		List<Theme> themesByForumId = mapper.getThemesByForumId(5);
		System.out.println(themesByForumId);
//		List<Theme> themesByUserId = mapper.getThemesByUserId(4);
//		System.out.println(themesByUserId);
		//mapper.deleteTheme(4);
	
	}

}

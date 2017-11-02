package com.group.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.group.entities.User;
import com.group.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes(value= {"user"})
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value= {"/login"},method=RequestMethod.POST)
	public String login(String stuName, String password , Model model) {
		
		StringBuffer sb = new StringBuffer();
		model.addAttribute("error", sb);
		if(stuName.trim().equals("") || stuName == null) {
			sb.append("�û�������Ϊ��");
		}
		
		if(password.trim().equals("") || password == null) {
			sb.append("���벻��Ϊ��");
		}
		
		if(sb.length() != 0) {
			System.out.println(sb);
			return "forward:/index.jsp";
		}
		
		User u = userService.login(stuName, password);
		if(u == null) {
			sb.append("�û��������벻��ȷ");
			return "forward:/index.jsp";
		}
		//�û���¼�ɹ�������뵽session��
		model.addAttribute("user", u);
		return "success";
	}
	
	
	@RequestMapping("/stus")
	@ResponseBody
	public List<User> getStusByCriteria(String criteria,String groupId) {
		List<User> criteriaStus = userService.getUsersByCriteria(criteria,groupId);
		return criteriaStus;
	}
	

}

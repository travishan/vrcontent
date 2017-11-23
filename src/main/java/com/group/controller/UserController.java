package com.group.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping("/go")  
	public String go(@RequestParam String type) {  
	    return type;  
	}  
	
	@RequestMapping(value= {"/login"},method=RequestMethod.POST)
	public String login(String stuName, String password , Model model) {
		
		StringBuffer sb = new StringBuffer();
		model.addAttribute("error", sb);
		if(stuName.trim().equals("") || stuName == null) {
			sb.append("用户名不能为空");
		}
		
		if(password.trim().equals("") || password == null) {
			sb.append("密码不能为空");
		}
		
		if(sb.length() != 0) {
			System.out.println(sb);
			return "forward:/index.jsp";
		}
		
		User u = userService.login(stuName, password);
		if(u == null) {
			sb.append("用户名或密码不正确");
			return "forward:/index.jsp";
		}
		//用户登录成功后将其加入到session中
		
		
		model.addAttribute("user", u);
		if(u.getIdentity().equals("1"))
			return "redirect:/user/go?type=teacher1";
		else
			return "redirect:/user/go?type=student1";
	}

	
	@RequestMapping("/stus")
	@ResponseBody
	public List<User> getStusByCriteria(String criteria,String groupId) {
		List<User> criteriaStus = userService.getUsersByCriteria(criteria,groupId);
		System.out.println(criteriaStus);
		return criteriaStus;
	}
	

}

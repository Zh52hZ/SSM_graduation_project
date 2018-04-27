package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.User;
import com.jiudian.service.UserService;

 
@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/list")
	public String list(User user,HttpServletRequest request) throws Exception{
		List<User> list = userService.queryUserList(user);
		request.setAttribute("userList", list);
		return "/user/userlist.jsp";
	}
	
	@RequestMapping(value="/adduser")
	public String adduser(User user,HttpServletRequest request) throws Exception{
		userService.insertUser(user);
		user=new User();
		return this.list(user, request);
	}
	
	@RequestMapping(value="/toupdateuser")
	public String toupdateuser(int id,HttpServletRequest request) throws Exception{
		User user=userService.queryUserById(id);
		request.setAttribute("user", user);
		return "/user/userupdate.jsp";
	}
	
	@RequestMapping(value="/deleteuser")
	public String deleteuser(int id,HttpServletRequest request) throws Exception{
		userService.deleteUser(id);
		return "/user/list";
	}
	
	@RequestMapping(value="/updateuser")
	public String updateuser(User user,HttpServletRequest request) throws Exception{
		userService.updateUser(user);
		user=new User();
		return this.list(user, request);
	}
	
}

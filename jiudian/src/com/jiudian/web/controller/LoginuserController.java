package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Loginuser;
import com.jiudian.service.LoginuserService;
 
@Controller
@RequestMapping("/loginuser")
public class LoginuserController {
	@Autowired
	private LoginuserService loginuserService;
	
	//查询用户信息
	@RequestMapping(value="/list")
	public String list(Loginuser loginuser,HttpServletRequest request) throws Exception{
		List<Loginuser> list = loginuserService.queryLoginuserList(loginuser);
		request.setAttribute("loginuserList", list);
		return "/loginuser/loginuserlist.jsp";
	}
	
	//增加用户
	@RequestMapping(value="/addloginuser")
	public String addloginuser(Loginuser loginuser,HttpServletRequest request) throws Exception{
		List<Loginuser> list = loginuserService.queryLoginuserList(loginuser);
		String username = request.getParameter("username");
		String telphone = request.getParameter("telphone");
		String email = request.getParameter("email");
		for (Loginuser loginuser2 : list) {
			if(loginuser2.getUsername().equals(username)){
				request.setAttribute("messageInfo", "用户名已被使用，请换一个！");
				return "/loginuser/loginuseradd.jsp";
			}
			if(loginuser2.getTelphone().equals(telphone)){
				request.setAttribute("messageInfo", "手机号已被使用！");
				return "/loginuser/loginuseradd.jsp";
			}
			if(loginuser2.getEmail().equals(email)){
				request.setAttribute("messageInfo", "邮箱已被使用！");
				return "/loginuser/loginuseradd.jsp";
			}
		}
		loginuserService.insertLoginuser(loginuser);
		loginuser=new Loginuser();
		return this.list(loginuser, request);
	}
	
	//用户信息修改获取用户信息
	@RequestMapping(value="/toupdateloginuser")
	public String toupdateloginuser(int id,HttpServletRequest request) throws Exception{
		Loginuser loginuser=loginuserService.queryLoginuserById(id);
		request.setAttribute("loginuser", loginuser);
		return "/loginuser/loginuserupdate.jsp";
	}
	
	//删除用户
	@RequestMapping(value="/deleteloginuser")
	public String deleteloginuser(int id,HttpServletRequest request) throws Exception{
		loginuserService.deleteLoginuser(id);
		return "/loginuser/list";
	}
	
	//更新用户信息
	@RequestMapping(value="/updateloginuser")
	public String updateloginuser(Loginuser loginuser,HttpServletRequest request) throws Exception{
		loginuserService.updateLoginuser(loginuser);
		loginuser=new Loginuser();
		return this.list(loginuser, request);
	}
	
	
}

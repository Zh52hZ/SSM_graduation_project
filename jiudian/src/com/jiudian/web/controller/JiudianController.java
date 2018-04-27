package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Jiudian;
import com.jiudian.service.JiudianService;
 
@Controller
@RequestMapping("/jd")
public class JiudianController {
	@Autowired
	private JiudianService jiudianService;
	
	@RequestMapping(value="/list")
	public String list(Jiudian jiudian,HttpServletRequest request) throws Exception{
		List<Jiudian> list = jiudianService.queryJiudianList(jiudian);
		request.setAttribute("jiudianList", list);
		return "/jiudian/jiudianlist.jsp";
	}
	
	@RequestMapping(value="/addjiudian")
	public String addjiudian(Jiudian jiudian,HttpServletRequest request) throws Exception{
		jiudianService.insertJiudian(jiudian);
		jiudian=new Jiudian();
		return this.list(jiudian, request);
	}
	
	@RequestMapping(value="/toupdatejiudian")
	public String toupdatejiudian(int id,HttpServletRequest request) throws Exception{
		Jiudian jiudian=jiudianService.queryJiudianById(id);
		request.setAttribute("jiudian", jiudian);
		return "/jiudian/jiudianupdate.jsp";
	}
	
	@RequestMapping(value="/deletejiudian")
	public String deletejiudian(int id,HttpServletRequest request) throws Exception{
		jiudianService.deleteJiudian(id);
		return "/jiudian/list";
	}
	
	@RequestMapping(value="/updatejiudian")
	public String updatejiudian(Jiudian jiudian,HttpServletRequest request) throws Exception{
		jiudianService.updateJiudian(jiudian);
		jiudian=new Jiudian();
		return this.toupdatejiudian(1, request);
	}
	
}

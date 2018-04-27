package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Dingdan;
import com.jiudian.service.DingdanService;

 
@Controller
@RequestMapping("/dingdan")
public class DingdanController {
	@Autowired
	private DingdanService dingdanService;
	
	//查询所有订单信息，将查询后数据返回页面
	@RequestMapping(value="/list")
	public String list(Dingdan dingdan,HttpServletRequest request) throws Exception{
		List<Dingdan> list = dingdanService.queryDingdanList(dingdan);
		request.setAttribute("dingdanList", list);
		return "/dingdan/dingdanlist.jsp";
	}
	//增加订单
	@RequestMapping(value="/adddingdan")
	public String adddingdan(Dingdan dingdan,HttpServletRequest request) throws Exception{
		dingdanService.insertDingdan(dingdan);
		dingdan=new Dingdan();
		return this.list(dingdan, request);
	}
	//修改订单页面获取信息以便修改
	@RequestMapping(value="/toupdatedingdan")
	public String toupdatedingdan(int id,HttpServletRequest request) throws Exception{
		Dingdan dingdan=dingdanService.queryDingdanById(id);
		request.setAttribute("dingdan", dingdan);
		return "/dingdan/dingdanupdate.jsp";
	}
	
	//删除订单
	@RequestMapping(value="/deletedingdan")
	public String deletedingdan(int id,HttpServletRequest request) throws Exception{
		dingdanService.deleteDingdan(id);
		return "/dingdan/list";
	}
	
	//更新订单信息
	@RequestMapping(value="/updatedingdan")
	public String updatedingdan(Dingdan dingdan,HttpServletRequest request) throws Exception{
		dingdanService.updateDingdan(dingdan);
		dingdan=new Dingdan();
		return this.list(dingdan, request);
	}
}

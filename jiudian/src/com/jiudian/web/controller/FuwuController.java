package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Fuwu;
import com.jiudian.service.FuwuService;
 
@Controller
@RequestMapping("/fuwu")
public class FuwuController {
	@Autowired
	private FuwuService fuwuService;
	
	//查询所有订单信息，将数据返回页面
	@RequestMapping(value="/list")
	public String list(Fuwu fuwu,HttpServletRequest request) throws Exception{
		List<Fuwu> list = fuwuService.queryFuwuList(fuwu);
		request.setAttribute("fuwuList", list);
		return "/fuwu/fuwulist.jsp";
	}
	
	//增加服务
	@RequestMapping(value="/addfuwu")
	public String addfuwu(Fuwu fuwu,HttpServletRequest request) throws Exception{
		fuwu.setPic(fuwu.getFujian());
		fuwuService.insertFuwu(fuwu);
		fuwu=new Fuwu();
		return this.list(fuwu, request);
	}
	
	//前更新获取服务信息以便修改
	@RequestMapping(value="/toupdatefuwu")
	public String toupdatefuwu(int id,HttpServletRequest request) throws Exception{
		Fuwu fuwu=fuwuService.queryFuwuById(id);
		request.setAttribute("fuwu", fuwu);
		return "/fuwu/fuwuupdate.jsp";
	}
	
	//删除服务
	@RequestMapping(value="/deletefuwu")
	public String deletefuwu(int id,HttpServletRequest request) throws Exception{
		fuwuService.deleteFuwu(id);
		return "/fuwu/list";
	}
	
	//更新服务信息
	@RequestMapping(value="/updatefuwu")
	public String updatefuwu(Fuwu fuwu,HttpServletRequest request) throws Exception{
		fuwu.setPic(fuwu.getFujian());
		fuwuService.updateFuwu(fuwu);
		fuwu=new Fuwu();
		return this.list(fuwu, request);
	}
	
}

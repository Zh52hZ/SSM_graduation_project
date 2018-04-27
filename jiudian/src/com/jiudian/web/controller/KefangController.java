package com.jiudian.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Kefang;
import com.jiudian.service.KefangService;
 
@Controller
@RequestMapping("/kefang")
public class KefangController {
	@Autowired
	private KefangService kefangService;
	
	@RequestMapping(value="/list")
	public String list(Kefang kefang,HttpServletRequest request) throws Exception{
		List<Kefang> list = kefangService.queryKefangList(kefang);
		request.setAttribute("kefangList", list);
		return "/kefang/kefanglist.jsp";
	}
	
	@RequestMapping(value="/addkefang")
	public String addkefang(Kefang kefang,HttpServletRequest request) throws Exception{
		kefang.setPic(kefang.getFujian());
		kefangService.insertKefang(kefang);
		kefang=new Kefang();
		return this.list(kefang, request);
	}
	
	@RequestMapping(value="/toupdatekefang")
	public String toupdatekefang(int id,HttpServletRequest request) throws Exception{
		Kefang kefang=kefangService.queryKefangById(id);
		request.setAttribute("kefang", kefang);
		return "/kefang/kefangupdate.jsp";
	}
	
	@RequestMapping(value="/deletekefang")
	public String deletekefang(int id,HttpServletRequest request) throws Exception{
		kefangService.deleteKefang(id);
		return "/kefang/list";
	}
	
	@RequestMapping(value="/updatekefang")
	public String updatekefang(Kefang kefang,HttpServletRequest request) throws Exception{
		kefang.setPic(kefang.getFujian());
		kefangService.updateKefang(kefang);
		kefang=new Kefang();
		return this.list(kefang, request);
	}
	
}

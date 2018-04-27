package com.jiudian.web.controller;

 

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jiudian.pojo.Dingdan;
import com.jiudian.pojo.Fuwu;
import com.jiudian.pojo.Huodong;
import com.jiudian.pojo.Jiudian;
import com.jiudian.pojo.Kefang;
import com.jiudian.pojo.Loginuser;
import com.jiudian.pojo.Tousu;
import com.jiudian.pojo.User;
import com.jiudian.service.DingdanService;
import com.jiudian.service.FuwuService;
import com.jiudian.service.HuodongService;
import com.jiudian.service.JiudianService;
import com.jiudian.service.KefangService;
import com.jiudian.service.LoginuserService;
import com.jiudian.service.TousuService;
import com.jiudian.service.UserService;

 
@Controller
@RequestMapping("/index")
public class IndexController {
	@Autowired
	private UserService userService;
	@Autowired
	private DingdanService dingdanService;
	@Autowired
	private KefangService kefangService;
	@Autowired
	private LoginuserService loginuserService;
	@Autowired
	private HuodongService huodongService;
	@Autowired
	private FuwuService fuwuService;
	@Autowired
	private JiudianService jiudianService;
	@Autowired
	private TousuService tousuService;
	
	//管理员登录
	@RequestMapping(value = "/login")
	public String login(HttpServletRequest request) throws Exception {
		//将login.jsp文件中的数据读取到出来
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		//查询用户是否存在
		User user = userService.login(username, pwd);
		if (user != null) {
			//用户登陆成功后服务器将用户的信息绑定到session对象上
			request.getSession().setAttribute("username",
					user.getUsername());
			request.getSession().setAttribute("user", user);
			return "/index.jsp";
		} else {
			//向login.jsp页面传参数（仅一次）
			request.setAttribute("messageInfo", "用户名或密码有误");
			return "/login.jsp";
		}
	}
	
	//注销
	@RequestMapping(value = "/loginout")
	public String loginout(HttpServletRequest request) throws Exception {
		//注销用户，使session失效。
		request.getSession().invalidate();
		return "/login.jsp";
	}
	
	
	//查询所有客房信息并返回
	@RequestMapping(value="/index")
	public String index(Kefang kefang,HttpServletRequest request) throws Exception{
		List<Kefang> list = kefangService.queryKefangList(kefang);
		//将查询的数据传到jsp页面
		request.setAttribute("kefangList", list);
		return "/web/index.jsp";
	}
	
	//注册
	@RequestMapping(value="/register")
	public String register(Loginuser loginuser,HttpServletRequest request) throws Exception{
		List<Loginuser> list = loginuserService.queryLoginuserList(loginuser);
		String username = request.getParameter("username");
		String telphone = request.getParameter("telphone");
		String email = request.getParameter("email");
		for (Loginuser loginuser2 : list) {
			if(loginuser2.getUsername().equals(username)){
				request.setAttribute("messageInfo", "用户名已被使用，请换一个！");
				return "/web/register.jsp";
			}
			if(loginuser2.getTelphone().equals(telphone)){
				request.setAttribute("messageInfo", "手机号已被使用！");
				return "/web/register.jsp";
			}
			if(loginuser2.getEmail().equals(email)){
				request.setAttribute("messageInfo", "邮箱已被使用！");
				return "/web/register.jsp";
			}
		}
		loginuserService.insertLoginuser(loginuser);
		request.setAttribute("messageInfo", "注册成功");
		//跳转到客栈客房页面
		return "/web/login.jsp";
	}
	
	//用户登录
	@RequestMapping(value="/userlogin")
	public String login(Loginuser loginuser,HttpServletRequest request) throws Exception{
		//验证用户登录
		List<Loginuser> list = loginuserService.queryLoginuserList(loginuser);
		if(list!=null && list.size()>0){
			Loginuser luser = list.get(0);
			//用户登陆成功后服务器将用户的信息绑定到session对象上
			request.getSession().setAttribute("currentUser", luser);
			Kefang kf=new Kefang();
			request.setAttribute("messageInfo", "登录成功！");
			//跳转到客栈客房页面
			return this.index(kf, request);
		}else{
			request.setAttribute("messageInfo", "用户名密码错误！");
			return "/web/login.jsp";
		}
	}
	
	//用户注销
	@RequestMapping(value="/userloginout")
	public String userloginout(Loginuser loginuser,HttpServletRequest request) throws Exception{
		request.getSession().setAttribute("currentUser",null);
		//注销用户，使session失效。
		request.getSession().invalidate();
		Kefang kf=new Kefang();
		return this.index(kf, request);
	}
	
	//用户信息修改
	@RequestMapping(value="/upuserinfo")
	public String upuserinfo(Loginuser loginuser,HttpServletRequest request) throws Exception{
		loginuserService.updateLoginuser(loginuser);
		request.getSession().setAttribute("currentUser", loginuser);
		request.setAttribute("messageInfo", "修改成功！");
		return "/web/userinfo.jsp";
	}
	
	//活动页面
	@RequestMapping(value="/hdlist")
	public String hdlist(Huodong huodong,HttpServletRequest request) throws Exception{
		List<Huodong> list = huodongService.queryHuodongList(huodong);
		request.setAttribute("huodongList", list);
		return "/web/huodonglist.jsp";
	}
	
	//活动详情
	@RequestMapping(value="/hdview")
	public String hdview(int id,HttpServletRequest request) throws Exception{
		Huodong huodong = huodongService.queryHuodongById(id);
		request.setAttribute("huodong", huodong);
		return "/web/huodongdetail.jsp";
	}
	
	//客房详情
	@RequestMapping(value="/kfview")
	public String kfview(int id,HttpServletRequest request) throws Exception{
		Kefang kefang = kefangService.queryKefangById(id);
		request.setAttribute("kefang", kefang);
		return "/web/kefangdetail.jsp";
	}
	
	//客房预定订单
	@RequestMapping(value="/yding")
	public String yding(int id,HttpServletRequest request) throws Exception{
		Kefang kefang = kefangService.queryKefangById(id);
		request.setAttribute("kefang", kefang);
		return "/web/yuding.jsp";
	}
	
	//服务预定订单
		@RequestMapping(value="/fuwuyding")
		public String fuwuYding(int id,HttpServletRequest request) throws Exception{
			Fuwu fuwu = fuwuService.queryFuwuById(id);
			request.setAttribute("fuwu", fuwu);
			return "/web/fuwuorder.jsp";
		}
	
	//服务页面
	@RequestMapping(value="/fwlist")
	public String fwlist(Fuwu fuwu,HttpServletRequest request) throws Exception{
		List<Fuwu> list = fuwuService.queryFuwuList(fuwu);
		request.setAttribute("fuwuList", list);
		return "/web/fuwulist.jsp";
	}
	
	//服务详情
	@RequestMapping(value="/fwview")
	public String fwview(int id,HttpServletRequest request) throws Exception{
		Fuwu fuwu = fuwuService.queryFuwuById(id);
		request.setAttribute("fuwu", fuwu);
		return "/web/fuwudetail.jsp";
	}
	
	//关于我们
	@RequestMapping(value="/aboutus")
	public String aboutus(int id,HttpServletRequest request) throws Exception{
		Jiudian jiudian = jiudianService.queryJiudianById(id);
		request.setAttribute("jiudian", jiudian);
		return "/web/aboutus.jsp";
	}
	

	//查询所有投诉回复信息
	@RequestMapping(value="/tslist")
	public String tslist(Tousu tousu,HttpServletRequest request) throws Exception{
		List<Tousu> list = tousuService.queryTousuList(tousu);
		request.setAttribute("tousuList", list);
		return "/web/tousu.jsp";
	}
	
	//用户投诉回复功能
	@RequestMapping(value="/ts")
	public String ts(Tousu tousu,HttpServletRequest request) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		tousu.setTstime(time);
		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		tousu.setTsperson(user.getUsername());
		tousuService.insertTousu(tousu);
		/*request.setAttribute("messageInfo", "感谢您的反馈！");*/
		tousu = new Tousu();
		return this.tslist(tousu, request);
	}
	
	//客房订单
	@RequestMapping(value="/submitorder")
	public String submitorder(int id,HttpServletRequest request, String rzrq, String lkrq) throws Exception{
		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		Kefang kefang = kefangService.queryKefangById(id);
		Dingdan dingdan1=new Dingdan();
		dingdan1.setRzrq(rzrq);
		dingdan1.setLkrq(lkrq);
		dingdan1.setBid(id);
		dingdan1.setUid(user.getId());
		dingdan1.setMoney(kefang.getMoney());
		dingdan1.setTime(time);
		dingdan1.setType(1);
		dingdan1.setName(kefang.getName());
		dingdan1.setState("已预订");
		dingdanService.insertDingdan(dingdan1);
		kefang.setNum(kefang.getNum()-1);
		kefangService.updateKefang(kefang);
		
		return this.myorder(dingdan1, request);
	}
	
	//服务订单
	@RequestMapping(value="/submitorderfw")
	public String submitorderfw(int id,HttpServletRequest request) throws Exception{
		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(new Date());
		Fuwu fuwu = fuwuService.queryFuwuById(id);
		Dingdan dingdan=new Dingdan();
		dingdan.setBid(id);
		dingdan.setUid(user.getId());
		dingdan.setMoney(fuwu.getMoney());
		dingdan.setTime(time);
		dingdan.setType(2);
		dingdan.setName(fuwu.getName());
		dingdan.setState("已预订");
		dingdanService.insertDingdan(dingdan);
		fuwu.setNum(fuwu.getNum()-1);
		fuwuService.updateFuwu(fuwu);
		
		return this.myorder(dingdan, request);
	}
	
	//订单
	@RequestMapping(value="/myorder")
	public String myorder(Dingdan dingdan,HttpServletRequest request) throws Exception{
		Loginuser user = (Loginuser) request.getSession().getAttribute("currentUser");
		dingdan.setUid(user.getId());
		List<Dingdan> list = dingdanService.queryDingdanList(dingdan);
		request.setAttribute("dingdanList", list);
		return "/web/myorder.jsp";
	}
	
	//订单取消
	@RequestMapping(value="/qxorder")
	public String qxorder(int id,HttpServletRequest request) throws Exception{
		Dingdan dingdan = new Dingdan();
		dingdan.setId(id);
		dingdan.setState("已取消");
		dingdanService.qxDingdan(dingdan);
		if(dingdan.getType()==1){
			Kefang kefang = kefangService.queryKefangById(dingdan.getBid());
			kefang.setNum(kefang.getNum()+1);
			kefangService.updateKefang(kefang);
		}
		dingdan=new Dingdan();
		return this.myorder(dingdan, request);
	}
}

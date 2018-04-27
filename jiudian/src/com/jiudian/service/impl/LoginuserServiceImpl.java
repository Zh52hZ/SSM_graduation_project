package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.LoginuserMapper;
import com.jiudian.pojo.Loginuser;
import com.jiudian.service.LoginuserService;


 
@Service
public class LoginuserServiceImpl implements LoginuserService {
	@Autowired
	private LoginuserMapper loginuserMapper;

	public List<Loginuser> queryLoginuserList(Loginuser loginuser) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(loginuser!=null){
			map.put("username", loginuser.getUsername());
			map.put("pwd", loginuser.getPwd());
			map.put("name", loginuser.getName());
		}
		List<Loginuser> getLoginuser = loginuserMapper.query(map);
		return getLoginuser;
	}

	public int insertLoginuser(Loginuser loginuser) throws Exception {
		loginuserMapper.insertLoginuser(loginuser);
		return loginuser.getId();
	}

	public int deleteLoginuser(int id) throws Exception {
		return loginuserMapper.deleteLoginuser(id);
	}

	public int updateLoginuser(Loginuser loginuser) throws Exception {
		return loginuserMapper.updateLoginuser(loginuser);
	}
	
	public Loginuser queryLoginuserById(int id) throws Exception {
		return loginuserMapper.queryLoginuserById(id);
	}

 

}

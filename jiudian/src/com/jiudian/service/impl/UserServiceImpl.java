package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.UserMapper;
import com.jiudian.pojo.User;
import com.jiudian.service.UserService;

 
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	public List<User> queryUserList(User user) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(user!=null){
			map.put("username", user.getUsername());
			map.put("pwd", user.getPwd());
		}
		List<User> getUser = userMapper.query(map);
		return getUser;
	}

	public int insertUser(User user) throws Exception {
		userMapper.insertUser(user);
		return user.getId();
	}

	public int deleteUser(int id) throws Exception {
		return userMapper.deleteUser(id);
	}

	public int updateUser(User user) throws Exception {
		return userMapper.updateUser(user);
	}
	
	public User queryUserById(int id) throws Exception {
		return userMapper.queryUserById(id);
	}

	public User login(String username, String pwd) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("username", username);
		map.put("pwd", pwd);
		List<User> getUser = userMapper.query(map);
		if (getUser != null && getUser.size() > 0) {
			System.out.println("用户密码正确");
			return getUser.get(0);
		} else {
			System.out.println("用户密码有误");
			return null;
		}

	}

}

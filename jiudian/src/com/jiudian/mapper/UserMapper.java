package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.User;

 
public interface UserMapper {
	public List<User> findUserList();
	
	public List<User> query(Map<String,Object> inputParam);
	
	public int insertUser(User user);
	
	public int deleteUser(int id);
	
	public int updateUser(User user);
	
	public User queryUserById(int id);
}

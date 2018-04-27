package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.User;


 
public interface UserService{
	public List<User> queryUserList(User user) throws Exception;
	
	public User login(String username,String pwd) throws Exception ;
	
	public int insertUser(User user) throws Exception ;
	
	public int deleteUser(int id) throws Exception ;
	
	public int updateUser(User user) throws Exception ;
	
	public User queryUserById(int id) throws Exception ;
}

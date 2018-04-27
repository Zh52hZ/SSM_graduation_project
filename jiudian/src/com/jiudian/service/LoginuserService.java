package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Loginuser;
 
public interface LoginuserService{
	public List<Loginuser> queryLoginuserList(Loginuser loginuser) throws Exception;
	
	public int insertLoginuser(Loginuser loginuser) throws Exception ;
	
	public int deleteLoginuser(int id) throws Exception ;
	
	public int updateLoginuser(Loginuser loginuser) throws Exception ;
	
	public Loginuser queryLoginuserById(int id) throws Exception ;
}

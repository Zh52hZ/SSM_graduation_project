package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Fuwu;
 
public interface FuwuService{
	public List<Fuwu> queryFuwuList(Fuwu fuwu) throws Exception;
	
	public int insertFuwu(Fuwu fuwu) throws Exception ;
	
	public int deleteFuwu(int id) throws Exception ;
	
	public int updateFuwu(Fuwu fuwu) throws Exception ;
	
	public Fuwu queryFuwuById(int id) throws Exception ;
}

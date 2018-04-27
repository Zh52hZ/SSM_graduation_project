package com.jiudian.service;

import java.util.List;
import com.jiudian.pojo.Huodong;
 
public interface HuodongService{
	public List<Huodong> queryHuodongList(Huodong huodong) throws Exception;
	
	public int insertHuodong(Huodong huodong) throws Exception ;
	
	public int deleteHuodong(int id) throws Exception ;
	
	public int updateHuodong(Huodong huodong) throws Exception ;
	
	public Huodong queryHuodongById(int id) throws Exception ;
}

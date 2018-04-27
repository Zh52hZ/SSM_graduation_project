package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Jiudian;
 
public interface JiudianService{
	public List<Jiudian> queryJiudianList(Jiudian jiudian) throws Exception;
	
	public int insertJiudian(Jiudian jiudian) throws Exception ;
	
	public int deleteJiudian(int id) throws Exception ;
	
	public int updateJiudian(Jiudian jiudian) throws Exception ;
	
	public Jiudian queryJiudianById(int id) throws Exception ;
}

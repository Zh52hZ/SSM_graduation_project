package com.jiudian.service;

import java.util.List;

import com.jiudian.pojo.Kefang;
 
public interface KefangService{
	public List<Kefang> queryKefangList(Kefang kefang) throws Exception;
	
	public int insertKefang(Kefang kefang) throws Exception ;
	
	public int deleteKefang(int id) throws Exception ;
	
	public int updateKefang(Kefang kefang) throws Exception ;
	
	public Kefang queryKefangById(int id) throws Exception ;
}

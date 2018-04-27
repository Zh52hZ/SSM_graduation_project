package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

import com.jiudian.pojo.Loginuser;

public interface LoginuserMapper {
	public List<Loginuser> findLoginuserList();

	public List<Loginuser> query(Map<String, Object> inputParam);

	//添加用户
	public int insertLoginuser(Loginuser loginuser);

	//根据用户ID删除数据
	public int deleteLoginuser(int id);

	//更新数据
	public int updateLoginuser(Loginuser loginuser);

	//根据用户ID查询数据
	public Loginuser queryLoginuserById(int id);

	
}

package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.HuodongMapper;
import com.jiudian.pojo.Huodong;
import com.jiudian.service.HuodongService;

@Service //标注业务层组件
public class HuodongServiceImpl implements HuodongService {
	@Autowired //spring自动把bean里面引用的对象的setter/getter方法省略，自动帮你set/get
	private HuodongMapper huodongMapper;
	
	//通过活动名查询
	public List<Huodong> queryHuodongList(Huodong huodong) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(huodong!=null){
			map.put("name", huodong.getName());
		}
		List<Huodong> getHuodong = huodongMapper.query(map);
		return getHuodong;
	}

	//添加活动
	public int insertHuodong(Huodong huodong) throws Exception {
		huodongMapper.insertHuodong(huodong);
		return huodong.getId();
	}

	//删除活动
	public int deleteHuodong(int id) throws Exception {
		return huodongMapper.deleteHuodong(id);
	}

	//更新活动
	public int updateHuodong(Huodong huodong) throws Exception {
		return huodongMapper.updateHuodong(huodong);
	}
	
	//通过ID查询活动
	public Huodong queryHuodongById(int id) throws Exception {
		return huodongMapper.queryHuodongById(id);
	}

}

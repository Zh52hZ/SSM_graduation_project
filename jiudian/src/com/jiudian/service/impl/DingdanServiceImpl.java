package com.jiudian.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jiudian.mapper.DingdanMapper;
import com.jiudian.pojo.Dingdan;
import com.jiudian.service.DingdanService;


@Service
public class DingdanServiceImpl implements DingdanService {
	@Autowired
	private DingdanMapper dingdanMapper;

	public List<Dingdan> queryDingdanList(Dingdan dingdan) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		if(dingdan!=null){
			map.put("uid", dingdan.getUid());
		}
		
		List<Dingdan> getDingdan = dingdanMapper.query(map);
		return getDingdan;
	}

	public int insertDingdan(Dingdan dingdan) throws Exception {
		dingdanMapper.insertDingdan(dingdan);
		return dingdan.getId();
	}

	public int deleteDingdan(int id) throws Exception {
		return dingdanMapper.deleteDingdan(id);
	}

	public int updateDingdan(Dingdan dingdan) throws Exception {
		return dingdanMapper.updateDingdan(dingdan);
	}
	
	public Dingdan queryDingdanById(int id) throws Exception {
		return dingdanMapper.queryDingdanById(id);
	}

	public Dingdan login(String dingdanno, String pwd) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("dingdanno", dingdanno);
		map.put("pwd", pwd);
		List<Dingdan> getDingdan = dingdanMapper.query(map);
		if (getDingdan != null && getDingdan.size() > 0) {
			System.out.println("用户密码正确");
			return getDingdan.get(0);
		} else {
			System.out.println("用户密码有误");
			return null;
		}
	}

	
	public void qxDingdan(Dingdan dingdan) throws Exception {
		 dingdanMapper.qxDingdan(dingdan);
	}

}

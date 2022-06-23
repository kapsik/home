package com.kapja.home;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HomeDao {
	@Autowired
	private SqlSession sqlSession;
	
	List<Map<String, Object>> getMenu (){
		return sqlSession.selectList("getMenu");
	}

	public List<Map<String, Object>> getTopMenu(String upmenuCd) {
		return sqlSession.selectList("getTopMenu", upmenuCd);
	}

	public List<Map<String, Object>> getSubMenu(String upmenuCd) {
		return sqlSession.selectList("getSubMenu", upmenuCd);
	}
}

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
	
	List<Map<String, Object>> getMenu (String commGrpCd){
		return sqlSession.selectList("getMenu", commGrpCd);
	}
}

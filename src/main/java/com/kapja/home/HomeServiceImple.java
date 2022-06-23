package com.kapja.home;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HomeServiceImple implements HomeService{
@Autowired	
HomeDao homeDao;
	
	@Override
	public List<Map<String, Object>> getMenu() {
		return homeDao.getMenu();
	}

	@Override
	public List<Map<String, Object>> getTopMenu(String upmenuCd) {
		return homeDao.getTopMenu(upmenuCd);
	}
	
	@Override
	public List<Map<String, Object>> getSubMenu(String upmenuCd) {
		return homeDao.getSubMenu(upmenuCd);
	}

}

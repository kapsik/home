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
	public List<Map<String, Object>> getTopMenu() {
		System.out.println("homeServiceImple");
		return homeDao.getTopMenu();
	}

}

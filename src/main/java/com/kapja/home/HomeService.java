package com.kapja.home;

import java.util.List;
import java.util.Map;

public interface HomeService {
	public List<Map<String, Object>> getMenu();

	public List<Map<String, Object>> getTopMenu(String upmenuCd);
	public List<Map<String, Object>> getSubMenu(String upmenuCd);
}

package com.kapja.home;

import java.util.List;
import java.util.Map;

public interface HomeService {
	public List<Map<String, Object>> getMenu(String commGrpCd);
}

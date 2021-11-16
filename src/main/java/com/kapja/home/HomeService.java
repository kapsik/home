package com.kapja.home;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface HomeService {
	public List<Map<String, Object>> getTopMenu();
}

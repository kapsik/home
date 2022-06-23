package com.kapja.home;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired
	HomeService homeService;
	
	/**
	 * Author: "kapja"
	 * Since: 2021. 10. 31.
	 * Description: 
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.debug("home>");
		
		//전체메뉴
		//jsonArray 변환
		JSONArray allMenuJson = new JSONArray();
		allMenuJson.addAll(homeService.getMenu());
		
		//주메뉴
		//jsonArray 변환
		JSONArray topMenuJson = new JSONArray();
		topMenuJson.addAll(homeService.getTopMenu("TM"));
		
		//model 삽입
		model.addAttribute("allMenuJson", allMenuJson);
		model.addAttribute("topMenuJson", topMenuJson);
		
		return "home";
	}
	
}

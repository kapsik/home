package com.kapja.home;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.debug("home>");
		List<Map<String, Object>> topMenuList =  homeService.getMenu("TM001");
		List<Map<String, Object>> subMenuList =  homeService.getMenu("TM002");
		//대메뉴 조회
		model.addAttribute("topMenuList", topMenuList);
		//서브메뉴 조회
		model.addAttribute("subMenuList", subMenuList);
		return "home";
	}
	
}

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
//	HomeServiceImple homeServiceImple;
	HomeService homeService;
	
	
	
	/**
	 * Author: "kapja"
	 * Since: 2021. 10. 31.
	 * Description: 
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		logger.debug("home>");
		System.out.println("home");
//		List<Map<String, Object>> topMenuList =  homeServiceImple.getTopMenu();
		List<Map<String, Object>> topMenuList =  homeService.getTopMenu();
		model.addAttribute("topMenuList", topMenuList);
		return "home";
	}
	
}

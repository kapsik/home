package com.kapja.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	/**
	 * Author: "kapja"
	 * Since: 2021. 10. 31.
	 * Description: 홈화면을 불러온다.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		logger.debug("home>");
		System.out.println("home");
		return "home";
	}
	
}

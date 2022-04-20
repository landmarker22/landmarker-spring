package com.lm.landmarker;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** psbtest
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}

	@RequestMapping(value = "main.do", method = RequestMethod.GET)
	public String main() {
		return "common/main";
	}

	@RequestMapping(value = "error404.do", method = RequestMethod.GET)
	public String error404() {
		return "common/404";
	}

	@RequestMapping(value = "about.do", method = RequestMethod.GET)
	public String about() {
		return "common/about";
	}

	@RequestMapping(value = "contact.do", method = RequestMethod.GET)
	public String contact() {
		return "common/contact";
	}

	@RequestMapping(value = "propertyAgent.do", method = RequestMethod.GET)
	public String propertyAgent() {
		return "common/property-agent";
	}

	@RequestMapping(value = "propertyList.do", method = RequestMethod.GET)
	public String propertyList() {
		return "common/property-list";
	}

	@RequestMapping(value = "propertyType.do", method = RequestMethod.GET)
	public String propertyType() {
		return "common/property-type";
	}

	@RequestMapping(value = "testImonial.do", method = RequestMethod.GET)
	public String testImonial() {
		return "common/testimonial";
	}
	
}

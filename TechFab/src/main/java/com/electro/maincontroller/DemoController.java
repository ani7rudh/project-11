package com.electro.maincontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DemoController {
	
	
	@RequestMapping(value = "/contactus")
	public String contactUs(Model model)
	{
		
	
		return "ContactUs";
	}
	
	@RequestMapping(value = "/accessdenied")
	public String LoginPage()
	{
		
	
		return "AccessDenied";
	}
	
	@RequestMapping(value = "tyresponse")
	public String response()
	{
		
	
		return "tyresponse";
	}
	
	

}

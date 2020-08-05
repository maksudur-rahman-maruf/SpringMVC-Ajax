package com.maruf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	// to ensure that call is coming from Jquery.
	@RequestMapping(method = RequestMethod.GET)
	public String index()
	{
		return "ajax/index";
	}
	
	@RequestMapping(value = "/demo1", method = RequestMethod.GET)
	@ResponseBody
	public String demo1()
	{
		return "data From Controller via Ajax";
	}
	
	@RequestMapping(value = "/demo2/{fullName}", method = RequestMethod.GET)
	@ResponseBody
	public String demo2(@PathVariable("fullName") String fullName)
	{
		return "Hi " + fullName;
	}
}

package com.springMVC.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.view.RedirectView;

import com.springMVC.Service.UserService;
import com.springMVC.entity.User;

@Controller
public class HomeController {
 
	@Autowired
	private UserService userservice;
	
	@RequestMapping("/home")
	public String home()
	{
		Integer i=Integer.parseInt("ABC");
		return "home";
	}
	
	@RequestMapping("/register")
	public String register()
	{
		return "register";
	}
	
	@RequestMapping(path="/createuser", method=RequestMethod.POST)
	public String registeruser(@ModelAttribute User user,@RequestParam("fullname") String fn,Model m)
	{
		
		userservice.registerUser(user);
		m.addAttribute("msg","Register successfully...");
		return "redirect:/register";
	}
	
	@RequestMapping(path="/google")
	public String google()
	{
		return "redirect:https://www.google.com";
	}
	
	@RequestMapping(path="/yahoo")
	public RedirectView yahoo()
	{
		RedirectView r=new RedirectView();
		r.setUrl("https://in.search.yahoo.com");
		return r;
	}
	
	@RequestMapping(path="/user/{id}")
	public String getId(@PathVariable("id") int id)
	{
		System.out.println("id:"+id);
		return "home";
	}
	
	
	
	@RequestMapping(path="/loadfile")
	public String fileUpload()
	{
		
		return "file_upload";
	}
	
	@RequestMapping(path = "/fileUpload", method = RequestMethod.POST)
	public String fileUpload(@RequestParam("img") CommonsMultipartFile file) {

		System.out.println(file.getName());
		System.out.println(file.getOriginalFilename());
		System.out.println(file.getContentType());
		System.out.println(file.getSize());
		return "successpage";
	}
}

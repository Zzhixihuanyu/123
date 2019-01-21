package com.example.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.model.UserModel;
import com.example.service.IUserService;

@Controller
@RequestMapping("user")
//@RestController=@Controller+@ResponseBody
public class UserController {
	// http://127.0.0.1:8080/demo/user/toLogin
//	http://127.0.0.1:8080/demo/loginServlet

	@Autowired
	private IUserService userService;

	@RequestMapping("toLogin")
//	@RequestMapping(value = "/toLogin", method = RequestMethod.GET)
//	@GetMapping("toLogin")
	public String toLogin() {
		System.out.println("----------------1");
		return "0120";
	}

	@RequestMapping("login")
	public String login(UserModel model, Model model1,String authCode,HttpSession session) {
	//	return userService.login(model);
		System.out.println(model);
		System.out.println(model.getCode());
		model1.addAttribute("AA", "bb");
		if(authCode.equals(session.getAttribute("authCode")))
		{
			System.out.println("---true---");
		}
		return "result";
	}

	@RequestMapping("login2")
	@ResponseBody
	public String login2(UserModel model) {
//		System.out.println(model);
//		return userService.login(model);
		return "abc";
	}
	@RequestMapping("login3")
	@ResponseBody
	public UserModel login3(UserModel model) {
//		System.out.println(model);
//		return userService.login(model);
		return model;
	}
	
}

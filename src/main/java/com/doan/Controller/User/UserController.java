package com.doan.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.doan.Entity.Users;
import com.doan.Service.User.AccountServiceImpl;

import jakarta.servlet.http.HttpSession;


@Controller
public class UserController extends BaseController {
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value="/dang-ky",method= RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("user/account/register");
		_mvShare.addObject("user", new Users());
		return _mvShare;
		
	}
	
	@RequestMapping(value="/dang-ky",method= RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user) {
		int count = accountService.AddAccount(user);
		if(count > 0) {
			_mvShare.addObject("status", "Đăng ký tài khoản thành công!");
		}
		else {
			_mvShare.addObject("status", "Đăng ký tài khoản thất bại!");
		}
		_mvShare.setViewName("user/account/register");
		return _mvShare;
		
	}
	
	@RequestMapping(value="/dang-nhap",method= RequestMethod.POST)
	public ModelAndView Login(HttpSession session,@ModelAttribute("user") Users user) {
		boolean check = accountService.CheckAccount(user);
		
		if(check) {
			_mvShare.setViewName("redirect:trang-chu");
			session.setAttribute("LoginInfo", user);
		}
		else {
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại!");
		}
		return _mvShare;
	}
}

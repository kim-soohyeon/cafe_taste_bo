package com.ksh.cafeTaste.menu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ksh.cafeTaste.menu.dto.menuVo;
import com.ksh.cafeTaste.menu.service.menuService;


@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
	@Autowired
	private menuService service;
	
	//메뉴 관리
	@RequestMapping(value = "/registerMenu", method = RequestMethod.GET) 
	public String registerMenu() { 
		return "menu/menu"; 
	}
	
	//메뉴 등록
	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST) 
	public String insertMenu(Model model, @ModelAttribute menuVo reqDto) { 
		System.out.println(reqDto);
		service.insertMenu(reqDto);
		return "menu/menu";
	}

}

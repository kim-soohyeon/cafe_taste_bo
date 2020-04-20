package com.ksh.cafeTaste.menu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
//	@Autowired
//	private menuService menuService;
	
	//메뉴 관리
	@RequestMapping(value = "/registerMenu", method = RequestMethod.GET) 
	public String registerMenu() { 
		return "menu/menu"; 
	}
	
	//메뉴 등록
//	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST) 
//	public String insertMenu(Model model, @ModelAttribute menuVo reqDto) { 
//		
//		return menuService.insertMenu(reqDto);
//	}

}

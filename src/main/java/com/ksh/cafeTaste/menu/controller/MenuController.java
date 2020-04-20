package com.ksh.cafeTaste.menu.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ksh.cafeTaste.menu.dto.menuVo;
import com.ksh.cafeTaste.menu.service.menuService;


@Controller
@RequestMapping("/menu/*")
public class MenuController {
	
	@Autowired
	private menuService service;
	
	//메뉴 관리 GET
	@RequestMapping(value = "/registerMenu", method = RequestMethod.GET) 
	public String registerMenu() { 
		return "menu/menu"; 
	}
	
	//메뉴 등록 POST
	@RequestMapping(value = "/insertMenu", method = RequestMethod.POST) 
	public String insertMenu(Model model, @ModelAttribute menuVo reqDto) { 
		System.out.println(reqDto);
		service.insertMenu(reqDto);
		return "menu/getMenu";
	}

	//메뉴 조회 GET
	@RequestMapping(value = "/getMenu", method = RequestMethod.GET) 
	public String getMenu(Model model) { 
		return "menu/getMenu";
	}	
	
	//메뉴 리스트 조회 POST
	@RequestMapping(value = "/getMenuList.do", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	public @ResponseBody String getMenuList()throws JsonGenerationException, JsonMappingException, IOException {
		List<HashMap> menuList = service.getMenuList();
		for(int i=0; i<menuList.size(); i++) {
			String type=(String) menuList.get(i).get("type");
			if(type.equals("bakery")) {
				menuList.get(i).put("type","베이커리");
			}else {
				menuList.get(i).put("type","음료");
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(menuList);
		System.out.println(json);
        return json;
	}
}

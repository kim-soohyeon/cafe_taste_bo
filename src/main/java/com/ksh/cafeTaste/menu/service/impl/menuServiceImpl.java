package com.ksh.cafeTaste.menu.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ksh.cafeTaste.menu.dao.menuDAO;
import com.ksh.cafeTaste.menu.dto.menuVo;
import com.ksh.cafeTaste.menu.service.menuService;

@Service
public class menuServiceImpl implements menuService{

	@Autowired
	private menuDAO dao;
	
	@Override
	public void insertMenu(menuVo reqDto) {
		dao.insertMenu(reqDto);
	}

	@Override
	public List<HashMap> getMenuList() {
		return dao.getMenuList();
	}


}

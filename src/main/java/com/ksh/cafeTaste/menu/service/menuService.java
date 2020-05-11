package com.ksh.cafeTaste.menu.service;

import java.util.HashMap;
import java.util.List;

import com.ksh.cafeTaste.menu.dto.menuVo;

public interface menuService {

	public void insertMenu(menuVo reqDto);

	public List<HashMap> getMenuList();

	public menuVo getMenuDtlById(int id);

}

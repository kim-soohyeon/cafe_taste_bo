package com.ksh.cafeTaste.menu.dao;

import java.util.HashMap;
import java.util.List;

import com.ksh.cafeTaste.menu.dto.menuVo;

public interface menuDAO {

	public void insertMenu(menuVo reqDto);

	public List<HashMap> getMenuList();

}

package com.ksh.cafeTaste.menu.dto;

import lombok.Data;

@Data
public class menuVo {

//	private String id;
	private String type;
	private String menuNm;
	private String kind;
	private String descript;
	private Double calorie;
	private Double sugar;
	private Double protein;
	private Double fat;
	private Double salt;
	private Double caffeine;
	private String status;
	private String allergy;
	private String imgSrc;
	
	
}

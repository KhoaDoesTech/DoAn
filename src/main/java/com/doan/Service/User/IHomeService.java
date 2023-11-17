package com.doan.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.doan.Dto.ProductsDto;
import com.doan.Entity.Categorys;
import com.doan.Entity.Menus;
import com.doan.Entity.Slides;

public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
}

package com.doan.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import com.doan.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductByID(long id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
}

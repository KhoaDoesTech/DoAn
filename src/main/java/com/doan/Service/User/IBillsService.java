package com.doan.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import com.doan.Dto.CartDto;
import com.doan.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	
}

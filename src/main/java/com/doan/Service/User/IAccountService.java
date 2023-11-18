package com.doan.Service.User;

import org.springframework.stereotype.Service;


import com.doan.Entity.Users;
@Service
public interface IAccountService {
	public int AddAccount(Users user);
	
	public Users CheckAccount(Users user);
}

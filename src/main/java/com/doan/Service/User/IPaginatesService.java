package com.doan.Service.User;

import org.springframework.stereotype.Service;

import com.doan.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
}

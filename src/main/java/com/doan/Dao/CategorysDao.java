package com.doan.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.doan.Entity.Categorys;
import com.doan.Entity.MapperCategorys;

@Repository
public class CategorysDao extends BaseDao {
	public List<Categorys> GetDataCategorys(){
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM Category";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	} 
}
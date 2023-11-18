package com.doan.Dao;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.doan.Entity.Slides;
import com.doan.Entity.MapperSlides;

@Repository
public class HomeDao {
	@Autowired
	public JdbcTemplate _jdbcTemplate;
	
	public List<Slides> GetDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM Slide";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	} 
}

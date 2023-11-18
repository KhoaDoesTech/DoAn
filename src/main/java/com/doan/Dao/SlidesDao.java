package com.doan.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.doan.Entity.MapperSlides;
import com.doan.Entity.Slides;

@Repository
public class SlidesDao extends BaseDao{
	
	public List<Slides> GetDataSlide(){
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM Slide";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
}

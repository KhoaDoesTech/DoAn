package com.doan.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class MapperUsers implements RowMapper<Users> {
	
	public Users mapRow (ResultSet rs, int rowNum) throws SQLException {
		Users user = new Users();
		user.setId(rs.getLong("id"));
		user.setEmail(rs.getString("email"));
		user.setPassword(rs.getString("password"));
		user.setDisplay_name (rs.getString("display_name"));
		user.setAddress(rs.getString("address"));
		return user;
	}
}

package com.doan.Dao;

import org.springframework.stereotype. Repository;

import com.doan.Entity.Users;
import com.doan.Entity.MapperUsers;
@Repository
public class UsersDao extends BaseDao{
	public int AddAccount (Users user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO Users ");
		sql.append("(");
		sql.append("email,");
		sql.append(" password,");
		sql.append(" display_name,");
		sql.append(" address");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("(");
		sql.append("'"+user.getUser()+"', ");
		sql.append("'"+user.getPassword()+"', ");
		sql.append("'"+user.getDisplay_name()+"', ");
		sql.append("'"+user.getAddress()+"'");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public Users GetUserByAcc(Users user) {
		String sql ="SELECT * FROM Users WHERE email ='"+user.getUser()+"'";
		Users result = _jdbcTemplate.queryForObject(sql,new MapperUsers());
		return result;
	};
}
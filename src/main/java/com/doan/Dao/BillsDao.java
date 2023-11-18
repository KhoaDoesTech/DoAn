package com.doan.Dao;

import org.springframework.stereotype.Repository;

import com.doan.Entity.BillDetail;
import com.doan.Entity.Bills;
import com.doan.Entity.MapperUsers;
import com.doan.Entity.Users;
@Repository

public class BillsDao extends BaseDao {
	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO Bill");
		sql.append(" (");
		sql.append("email, phone, display_name, address, total, quanty, note");
		sql.append(") ");
		sql.append("VALUES");
		sql.append("( ");
		sql.append("'"+bill.getUser()+"', ");
		sql.append("'"+bill.getPhone()+"', ");
		sql.append("'"+bill.getDisplay_name()+"', ");
		sql.append("'"+bill.getAddress()+"', ");
		sql.append("'"+bill.getTotal()+"', ");
		sql.append("'"+bill.getQuanty()+"', ");
		sql.append("'"+bill.getNote()+"'");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public long GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM Bill;" );
		long id =_jdbcTemplate.queryForObject(sql.toString(),new Object[] {}, Long.class);
		return id;
	};
	
	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO BillDetail");
		sql.append(" (");
		sql.append("id_product, ");
		sql.append("id_bill, ");
		sql.append("quanty, ");
		sql.append("total");
		sql.append(") ");
		sql.append("VALUES");
		sql.append("( ");
		sql.append("	"+billDetail.getId_product()+", ");
		sql.append("	"+billDetail.getId_bills()+", ");
		sql.append("	"+billDetail.getQuanty()+", ");
		sql.append("	"+billDetail.getTotal()+" ");
		sql.append(");");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	}
}

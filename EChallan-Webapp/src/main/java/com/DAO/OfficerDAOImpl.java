package com.DAO;

import java.sql.*;

import com.entity.Officer;
public class OfficerDAOImpl implements OfficerDAO{
	
	private Connection conn;
	public OfficerDAOImpl(Connection conn) {
		super();
		this.conn=conn;
	}	
	public boolean officerRegister(Officer offsr) {
		
		boolean f=false;
		try {
			String sql="insert into officer(name,phone,idcard,design,password) values(?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, offsr.getName());
			ps.setString(2, offsr.getPhone());
			ps.setString(3, offsr.getDesign());
			ps.setString(4, offsr.getIdcard());
			ps.setString(5, offsr.getPassword());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}

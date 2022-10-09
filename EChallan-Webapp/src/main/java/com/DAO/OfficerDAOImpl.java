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
	
	public Officer officerLogin(String idcard,String password) {
		Officer offsr=null;
		try {
			String sql="select * from officer where idcard=? and password=?";
			
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1,idcard);
			ps.setString(2,password);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				offsr=	new Officer();
				offsr.setId(rs.getInt(1));
				offsr.setName(rs.getString(2));
				offsr.setPhone(rs.getString(3));
				offsr.setIdcard(rs.getString(4));
				offsr.setDesign(rs.getString(5));
				offsr.setDob(rs.getString(6));
				offsr.setEmail(rs.getString(7));
				offsr.setPassword(rs.getString(8));
				offsr.setBranch(rs.getString(9));
				offsr.setCity(rs.getString(10));
				offsr.setState(rs.getString(11));
				offsr.setPincode(rs.getString(12));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return offsr;
	}
	
	
}

package com.DAO;

import com.entity.Officer;

public interface OfficerDAO {
	
	public boolean officerRegister(Officer offsr);
	
	public Officer officerLogin(String idcard,String password);

}
package com.CraftVilla.DAO;

public class LoginDAO {
	
public boolean isValidLogin(String email, String pwd)
{
	
	if(email.equals(pwd))
	{
	return true;
	}

else
{
	
return false;
}
}
}

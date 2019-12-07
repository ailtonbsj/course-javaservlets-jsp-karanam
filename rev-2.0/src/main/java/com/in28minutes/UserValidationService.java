package com.in28minutes;

public class UserValidationService {
	public boolean isUserValid(String user, String pass) {
		if(user.equals("usuario") && pass.equals("senha"))
			return true;
		return false;
	}
}

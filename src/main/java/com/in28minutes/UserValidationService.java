package com.in28minutes;

public class UserValidationService {

	public boolean isUserValid(String user, String password) {
		if(user.equals("admin") && password.equals("admin"))
			return true;
		return false;
	}
}

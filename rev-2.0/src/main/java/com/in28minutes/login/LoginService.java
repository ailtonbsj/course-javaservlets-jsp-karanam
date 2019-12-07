package com.in28minutes.login;

public class LoginService {
	public boolean isUserValid(String user, String pass) {
		if(user.equals("usuario") && pass.equals("senha"))
			return true;
		return false;
	}
}

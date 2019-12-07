package webapp;

public class UserValidationService {
	public boolean isUserValid(String user, String pass) {
		if(user.equals("usuario") && pass.equals("senha"))
			return true;
		return false;
	}
}

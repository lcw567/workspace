package solopractice2.test3;

import java.util.HashMap;
import java.util.TreeMap;

public class MemberController {
	private HashMap map = new HashMap();
	
	public boolean joinMembership(String id, Member m) {
		boolean isPut = (map.put(id, m) != null);
			return isPut;
		}
	public String logIn(String id, String password) {
		return null;
	}
	
	public boolean changePassword(String id, String oldPw, String newPw) {
		return true;
	}
	
	public void changeName(String id, String newName) {
	}
	public TreeMap sameName(String name) {
		return null;
	}
	

}

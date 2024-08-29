package test240712.object1;

public class MemberController {
	int SIZE = 10;
	private Member[] m = new Member[SIZE];
	
//	public void start() {
//		for(int i = 0; i < SIZE; i++) {
//			m[i].setId("empty");
//			m[i].setName("empty");
//			m[i].setPassword("empty");
//			m[i].setEmail("empty");
//			m[i].setGender("empty");
//			m[i].setAge(-1);
//		}
//	}
	public int existMemberNum() {
		int res = 0;
		for(int i = 0; i < SIZE; i++) {
			if(m[i] != null && m[i].getId() != null) res++;
		}
		return res;
	}
	public Boolean checkId(String InputId) {
		Boolean res = false;
		for(int i = 0; i < SIZE; i++) {
			if(m[i] != null && m[i].getId() == InputId) res = true;
		}
		return res;
	}
	public void insertMember(String id, String name, String password, String email, String gender, int age) {
		for(int i = 0; i < SIZE; i++) {
			if(m[i] == null) {
				m[i] = new Member();
				m[i].setId(id);
				m[i].setName(name);
				m[i].setPassword(password);
				m[i].setEmail(email);
				m[i].setGender(gender);
				m[i].setAge(age);
				break;
			}
		}
	}
	public String searchId(String id) {
		String res = "검색 결과가 없습니다.";
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(id)) {
				res = "찾으신 회원 조회 결과입니다.\n" + "아이디 : " + m[i].getId() + " / " + "이름 : " + m[i].getName() + " / " + "비밀번호 : " + m[i].getPassword() + " / " + "이메일 : " + m[i].getEmail() + " / " + "성별 : " + m[i].getGender() + " / " + "나이 : " + m[i].getAge() + " / ";
			}
		}
		return res;
	}
	public String searchName(String name) {
		String res = "검색 결과가 없습니다.";
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(name)) {
				res = "찾으신 회원 조회 결과입니다.\n" + "아이디 : " + m[i].getId() + " / " + "이름 : " + m[i].getName() + " / " + "비밀번호 : " + m[i].getPassword() + " / " + "이메일 : " + m[i].getEmail() + " / " + "성별 : " + m[i].getGender() + " / " + "나이 : " + m[i].getAge() + " / ";
			}
		}
		return res;
	}
	public String searchEmail(String email) {
		String res = "검색 결과가 없습니다.";
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(email)) {
				res = "찾으신 회원 조회 결과입니다.\n" + "아이디 : " + m[i].getId() + " / " + "이름 : " + m[i].getName() + " / " + "비밀번호 : " + m[i].getPassword() + " / " + "이메일 : " + m[i].getEmail() + " / " + "성별 : " + m[i].getGender() + " / " + "나이 : " + m[i].getAge() + " / ";
			}
		}
		return res;
	}
	public Boolean updatePassword(String id, String password) {
		Boolean res = false;
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(id)) {
				m[i].setPassword(password);
				res = true;
			}
		}
		return res;
	}
	public Boolean updateName(String id, String name) {
		Boolean res = false;
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(id)) {
				m[i].setName(name);
				res = true;
			}
		}
		return res;
	}
	public Boolean updateEmail(String id, String email) {
		Boolean res = false;
		for(int i = 0; i < existMemberNum(); i++) {
			if(m[i].getId().equals(id)) {
				m[i].setEmail(email);
				res = true;
			}
		}
		return res;
	}
	public Boolean delete(String id) {
		Boolean res = false;
		for(int i = 0; i < m.length; i++) {
			if(m[i] == null) {
				res = false;
			}
			else if(m[i].getId().equals(id)) {
				for(int j = i; j < (m.length -1); j++) {
					m[j] = m[j+1];
				}
				m[m.length -1] = null;
				res = true;
			}
		}
		return res;
	}
	public void delete() {
		this.m = new Member[this.SIZE];
	}
	public void printAll() {
		for(int i = 0; i < existMemberNum(); i++) {
			System.out.printf("%s %s %s %s %s %d\n", m[i].getId(), m[i].getName(), m[i].getPassword(), m[i].getEmail(), m[i].getGender(), m[i].getAge());
		}
	}
}

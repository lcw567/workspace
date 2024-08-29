package solopractice.object.practice2;

public class SignUp {
	private String Id;
	private String Pwd;
	private String name;
	
	public SignUp() {}

	public SignUp(String id, String pwd, String name) {
		super();
		Id = id;
		Pwd = pwd;
		this.name = name;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getPwd() {
		return Pwd;
	}

	public void setPwd(String pwd) {
		Pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public void printinform() {
		System.out.println("아이디 :" + getId() + "비밀번호 :" + getPwd() + "이름 :" + getName());
	}
	
}

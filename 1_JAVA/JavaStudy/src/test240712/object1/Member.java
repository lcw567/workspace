package test240712.object1;

public class Member {
	private String id;
	private String name;
	private String password;
	private String email;
	private String gender;
	private int age;
	
	
	
	public Member() {
		super();
	}
	public Member(String id, String name, String password, String email, String gender, int age) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		this.email = email;
		this.gender = gender;
		this.age = age;
	}
	
	
	
	public String inform() {
		String res;
		res = getId() + getName() + getPassword() + getEmail() + getGender() + getAge();
		return res;
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}

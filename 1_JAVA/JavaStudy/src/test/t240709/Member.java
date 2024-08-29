package test.t240709;

public class Member {
	private String memberID;
	private String memberPWD;
	private String memberName;
	private int age;
	private char gender;
	private String phone;
	private String email;
	
	//기본생성자
	public Member() {}
	
	public void Member(String memberID, String memberPWD, String memberName) {
		this.memberID = memberID;
		this.memberPWD = memberPWD;
		this.memberName = memberName;
	}
	//메소드
	
	//memeberName의 필드값을 넘겨받은 name값으로 변경
	public void changeName(String memberName) {
		this.memberName = memberName;
	}
	public void printName() {
		System.out.printf("memberName : %s\n", memberName);
	}
	public void printMember() {
		System.out.printf("memberID : %s\n", memberID);
		System.out.printf("memberPWD : %s\n", memberPWD);
		System.out.printf("memberName : %s\n", memberName);
	}
	
}

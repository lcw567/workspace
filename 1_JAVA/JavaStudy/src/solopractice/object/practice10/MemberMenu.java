package solopractice.object.practice10;

import java.util.List;
import java.util.Scanner;

public class MemberMenu {
	private Scanner sc = new Scanner(System.in);
	private MemberController mc = new MemberController();

	public void mainMenu() {
		while (true) {
			System.out.println("========= 회원관리 프로그램 =========");
			System.out.println("1. 회원추가");
			System.out.println("2. 회원전체조회");
			System.out.println("3. 회원정보수정");
			System.out.println("4. 회원탈퇴");
			System.out.println("0. 프로그램 종료");

			System.out.println("메뉴 입력 : ");
			int menu = sc.nextInt();
			sc.nextLine();

			switch (menu) {
			case 1:
				break;
			case 2:
				break;
			case 3:
				break;
			case 4:
				break;
			case 0:
				System.out.println("이용해주셔서 감사합니다. 프로그램을 종료합니다.");
				break;
			default:
				System.out.println("메뉴를 잘못 입력하였습니다. 다시 입력해주세요");
			}
		}
	}

	public void inputMember() {
		System.out.println("============== 회원 추가 ================");

		String userId = this.inputMemberId();

		System.out.print("비밀번호 : ");
		String userPwd = sc.nextLine();

		System.out.print("이름 : ");
		String userName = sc.nextLine();

		System.out.print("성별(M, F) : ");
		String gender = sc.nextLine().toUpperCase();

		System.out.print("나이 : ");
		String age = sc.nextLine();

		System.out.print("이메일 : ");
		String email = sc.nextLine();

		System.out.print("전화번호 : ");
		String phone = sc.nextLine();

		System.out.print("주소 : ");
		String address = sc.nextLine();

		System.out.print("취미(,로 이어서 작성) : ");
		String hobby = sc.nextLine();

		mc.insertMember(userId, userPwd, userName, gender, age, email, phone, address, hobby);
	}

	public String inputMemberId() {
		System.out.print("아이디 : ");
		String userId = sc.nextLine();
		return userId;
	}

//-------------------------------------응답화면------------------------------------
	/**
	 * 서비스 요청 후 처리를 성공적으로 완료했을 때 보게될 응답화면
	 * 
	 * @param message : 성공메세지
	 */
	public void displaySuccess(String message) {
		System.out.println("\n서비스 요청 성공 : " + message);
	}
	

	/**
	 * 서비스 요청 후 처리를 성공적으로 완료하지 못했을 때 보게될 응답화면
	 * 
	 * @param message : 실패메세지
	 */
	public void displayFail(String message) {
		System.out.println("\n서비스 요청 실패 : " + message);
	}
	

	/**
	 * 조회서비스 요청시 결과가 없을 경우 보게될 응답화면
	 * 
	 * @param message : 조회결과에 대한 응답메세지
	 */
	public void displayNoData(String message) {
		System.out.println("\n" + message);
	}
	

	/**
	 * 조회서비스 요청시 결과가 여러행일 경우 보게될 응답화면
	 * 
	 * @param list : 조회결과
	 */
	public void displayMemeberList(List<Member> list) {
		for(Member m : list) {
			System.out.println(m);
		}
	}	

	/**
	 * 조회서비스 요청시 결과가 한행일 경우 보게될 응답화면
	 * 
	 * @param m : 조회결과
	 */
	public void displayMember(Member m) {
		System.out.println("조회된 데이터는 다음과 같습니다.");
		System.out.println(m);
	}
	
	

}

package solopractice.object.practice10;


public class MemberController {
	
	public void insertMember(String userId, String userPwd, String userName, String gender, String age, String email,
			String phone, String address, String hobby) {
		// view에서 전달받은 값을 바로 dao쪽으로 전달x
		// 하나의 객체로 만들어서 전달 (Member(vo))

		Member m = new Member(userId, userPwd, userName, gender, Integer.parseInt(age), email, phone, address, hobby);

		int result = new MemberService().insertMember(m);

		if (result > 0) {// 추가성공 -> 성공화면출력
			new MemberMenu().displaySuccess("성공적으로 회원 정보 추가되었습니다.");
		} else {// 추가실패 -> 실패화면출력
			new MemberMenu().displayFail("회원추가에 실패하였습니다.");
		}

	}

}

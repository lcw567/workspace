package test240718.object3;

public class GalaxyNote9 extends SmartPhone implements NotePen{

	public GalaxyNote9() {
		super();
	}
//	갤럭시 노트9은 삼성에서 만들어졌고 제원은 다음과 같다.
//	번호를 누르고 통화버튼을 누름
//	전화받기 버튼을 누름
//	1300만 듀얼카메라
//	고속충전, 고속 무선 충전
//	정전식, 와콤펜 지원
//	블루투스 펜 탑재 여부 : true
	
	
	
	@Override
	public String charge() {
		return "고속충전, 고속 무선 충전";
	}

	@Override
	public String makeCall() {
		return "번호를 누르고 통화버튼을 누름";
	}

	@Override
	public String takeCall() {
		return "전화받기 버튼을 누름";
	}

	@Override
	public String picture() {
		return "1300만 듀얼카메라";
	}

	@Override
	public String touch() {
		return "정전식, 와콤펜 지원";
	}

	@Override
	public boolean bluetoothPen() {
		return true;
	}

	@Override
	public String printInformation() {
		return charge();
	}
	
}

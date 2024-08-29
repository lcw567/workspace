package test.t240710.object5;

public class SnackController {
	private Snack s = new Snack();

	public SnackController() {
		System.out.println("스낵 컨트롤러 생성됨");
	}
	
	public String saveData(String kind, String name, 
			String flavor, int numOf, int price) {
		s.setKind(kind);
		s.setName(name);
		s.setFlavor(flavor);
		s.setNumOf(numOf);
		s.setPrice(price);
		
		return "저장 완료되었습니다.";
	}
	
	public String confrimData() {
		return s.information();
	}

}

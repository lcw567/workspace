package test.t240710.object1;

public class SnackController {
	Snack s = new Snack();
	
	public SnackController() {
		super();
//		System.out.println("SnackController create");
	}
	
	public String saveData(String kind, String name, String flavor, int numOf, int price) {
		s.setKind(kind);
		s.setName(name);
		s.setFlavor(flavor);
		s.setNumOf(numOf);
		s.setPrice(price);
		return "저장 완료되었습니다.";
	}
	public String confirmData() {
		String info = s.information();
		return info;
	}
	
}

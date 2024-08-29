package test.t240710.object2;

public class SnackController {
	private Snack s = new Snack();

	public SnackController() {
		super();
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
		String res = s.getKind() + "(" + s.getName() + " - " + s.getFlavor() + ") " + s.getNumOf() + "개 " + s.getPrice();
		return res;
	}
	
	
}

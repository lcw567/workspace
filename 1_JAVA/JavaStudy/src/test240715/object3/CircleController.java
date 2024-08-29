package test240715.object3;

public class CircleController {
	Circle c = new Circle();
	
	public String calcArea(int x, int y, int radius) {
		String res;
		res = "면적 : " + x + ", " + y + ", " + radius + " / " + (radius * radius) * Math.PI;
		return res;
	}
	public String calcCircum(int x, int y, int radius) {
		String res;
		res = "둘레 : " + x + ", " + y + ", " + radius + " / " + (radius * 2) * Math.PI;
		return res;
	}
}

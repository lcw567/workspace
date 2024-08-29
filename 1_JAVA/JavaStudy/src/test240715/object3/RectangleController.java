package test240715.object3;

public class RectangleController {
	Rectangle r = new Rectangle();
	
	
	public String calcArea(int x, int y, int height, int width) {
		String res;
		res = "넓이 : " + x + ", " + y + ", " + height + ", " + width + " / " + (height * width);
		return res;
	}
	public String calcPerimeter(int x, int y, int height, int width) {
		String res;
		res = "둘레 : " + x + ", " + y + ", " + height + ", " + width + " / " + ((height * 2) + (width * 2));
		return res;
	}
}

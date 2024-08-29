package solopractice2.test1;

public class RectangleController {
	private Rectangle r = new Rectangle();
	
	public String calcArea(int x, int y, int width, int height) {
		r.setX(x);
		r.setY(y);
		r.setWidth(width);
		r.setHeight(height);
		int area = width * height;
		return r.toString() +" / " + area;
		
	}
	
	public String calcPerimeter(int x, int y, int width, int height) {
		r.setX(x);
		r.setY(y);
		r.setWidth(width);
		r.setHeight(height);
		int per = (width + height) * 2;
		return r.toString() +" / " + per;
		
	}


}

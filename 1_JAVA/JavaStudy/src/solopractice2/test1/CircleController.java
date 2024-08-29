package solopractice2.test1;

public class CircleController {
	public static final double PI = 3.1415926548;
	Circle c = new Circle();
	
	public String calcArea(int x, int y, int radius) {
		c.setX(x);
		c.setY(y);
		c.setRadius(radius);
		double area = 2 * PI * c.getRadius();
		return c.toString() +" / " + area;
	}
	
	public String calcCircum(int x, int y, int radius) {
		c.setX(x);
		c.setY(y);
		c.setRadius(radius);
		double circum = PI * c.getRadius() * c.getRadius();
		return c.toString() +" / " + circum;
		
	}

}

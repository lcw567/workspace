package test.t240716.object1;

public class CircleController {
	Circle c = new Circle();
	
	//원의 넓이
	public String calcArea(int x, int y, int radius) {
		c.setX(x);
		c.setY(y);
		c.setRadius(radius);
		double Area = Math.PI * c.getRadius() * c.getRadius();
		return "넓이 : " + c.toString() + " / " + Area;
	}
	
	//원의 둘레
	public String calcCircum(int x, int y, int radius) {
		c.setX(x);
		c.setY(y);
		c.setRadius(radius);
		double circum = Math.PI * c.getRadius() * 2;
		return "둘레 : " + c.toString()+" / " + circum;
	}

}

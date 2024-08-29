package test.t240716.object1;

public class RectangleController {
	private Rectangle r;
	
	public RectangleController() {
		this.r = new Rectangle();
	}

	public String calcArea(int x, int y, int height, int width) {
		r.setX(x);
		r.setY(y);
		r.setWidth(width);
		r.setHeight(height);
		return "면적 : " + r.toString() +" / " + (width*height);
		
	}
	
	public String calcPerimeter(int x, int y, int height, int width) {
		r.setX(x);
		r.setY(y);
		r.setWidth(width);
		r.setHeight(height);
		return "둘레 : "  + r.toString() + " / " + (2*(width+height));
	}

}

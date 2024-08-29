package test240719.object3;

public class PlaneTest {

	public static void main(String[] args) {
		Plane[] p = new Plane[2];
		p[0] = new Airplane("B-737", 1000);
		p[1] = new Cargoplane("C-130", 1000);
		
		System.out.println("Plane\t\tfuelSize");
		System.out.println("-----------------------------");
		for(int i = 0; i < p.length; i++) {
			System.out.println(p[i].getPlaneName() + "\t\t" + p[i].getFuelSize());
		}
		System.out.println();
		System.out.println("100 운항");
		System.out.println("Plane\t\tfuelSize");
		System.out.println("-----------------------------");
		for(int i = 0; i < p.length; i++) {
			p[i].flight(100);
			System.out.println(p[i].getPlaneName() + "\t\t" + p[i].getFuelSize());	
		}
		System.out.println();
		System.out.println("200 주유");
		System.out.println("Plane\t\tfuelSize");
		System.out.println("-----------------------------");
		for(int i = 0; i < p.length; i++) {
			p[i].refuel(200);
			System.out.println(p[i].getPlaneName() + "\t\t" + p[i].getFuelSize());	
		}
		
	}

}

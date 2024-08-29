package test240719.object1;

public class AnimalManager {

	public static void main(String[] args) {
		Animal[] a = new Animal[5];
		
		a[0] = new Dog("바둑이", "얼룩이", 10);
		a[1] = new Cat("고양이", "검은고양이", "길바닥", "검은색");
		a[2] = new Dog("방울이", "진돗개", 20);
		a[3] = new Cat("냥냥이", "치즈", "집", "노란색");
		a[4] = new Dog("멍멍이", "리트리버", 20);
		
		for(int i = 0; i < a.length; i++) {
			if(a[i] instanceof Dog) {
				((Dog)a[i]).speak();
			}
			else ((Cat)a[i]).speak();
		}
	}

}

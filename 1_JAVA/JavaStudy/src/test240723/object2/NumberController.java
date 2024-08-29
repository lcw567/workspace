package test240723.object2;

public class NumberController {

	public NumberController() {
		super();
	}
	public boolean checkDouble(int num1, int num2) throws NumRangeException{
		boolean res = false;
		if((0 >= num1 || num1 >= 101) || (0 >= num2 || num2 >= 101)) {
			throw new NumRangeException("1부터 100 사이의 값이 아닙니다.");
		}
		if((0 < num1 && num1 < 101) && (0 < num2 && num2 < 101) && (num1 % num2 == 0)) res = true;
		return res;
	}
}

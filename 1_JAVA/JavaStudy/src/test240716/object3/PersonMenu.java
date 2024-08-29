package test240716.object3;

import java.util.Scanner;

public class PersonMenu {
	Scanner sc = new Scanner(System.in);
	PersonController pc = new PersonController();
	
	
	
	public void mainMenu() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("학생은 최대 3명까지 저장할 수 있습니다.");
			System.out.printf("현재 저장된 학생은 %d명입니다.\n", pc.personCount()[0]);
			System.out.println("사원은 최대 10명까지 저장할 수 있습니다.");
			System.out.printf("현재 저장된 사원은 %d명입니다.\n", pc.personCount()[1]);
			System.out.println("1. 학생 메뉴");
			System.out.println("2. 사원 메뉴");
			System.out.println("9. 끝내기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			System.out.println();
			switch(menu) {
			case 1:
				studentMenu();
				break;
			case 2:
				employeeMenu();
				break;
			case 9:
				System.out.println("종료합니다.");
				break;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
				break;
			}
		}
		
		
	}
	public void studentMenu() {
		int menu = 0;
		while(menu != 9) {
			if(pc.personCount()[0] < 3) {
				System.out.println("1. 학생 추가");
				System.out.println("2. 학생 보기");
				System.out.println("9. 메인으로");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				switch(menu) {
				case 1:
					insertStudent();
					System.out.println();
					break;
				case 2:
					printStudent();
					System.out.println();
					break;
				case 9:
					System.out.println("메인으로 돌아갑니다.");
					System.out.println();
					break;
				default:
					System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
					System.out.println();
					break;
				}
			}
			else if(pc.personCount()[0] == 3) {
				System.out.println("1. 학생 추가");
				System.out.println("2. 학생 보기");
				System.out.println("9. 메인으로");
				System.out.println("학생을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가 메뉴는 더 이상 활성화 되지 않습니다.");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				System.out.println();
				switch(menu) {
				case 2:
					printStudent();
					System.out.println();
					break;
				case 9:
					System.out.println("메인으로 돌아갑니다.");
					System.out.println();
					break;
				default:
					System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
					System.out.println();
					break;
				}
			}
		}
	}
	public void employeeMenu() {
		int menu = 0;
		while(menu != 9) {
			if(pc.personCount()[1] < 10) {
				System.out.println("1. 사원 추가");
				System.out.println("2. 사원 보기");
				System.out.println("9. 메인으로");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				System.out.println();
				switch(menu) {
				case 1:
					insertEmployee();
					System.out.println();
					break;
				case 2:
					printEmployee();
					System.out.println();
					break;
				case 9:
					System.out.println("메인으로 돌아갑니다.");
					System.out.println();
					break;
				default:
					System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
					System.out.println();
					break;
				}
			}
			else if(pc.personCount()[0] == 3) {
				System.out.println("1. 사원 추가");
				System.out.println("2. 사원 보기");
				System.out.println("9. 메인으로");
				System.out.println("사원을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가 메뉴는 더 이상 활성화 되지 않습니다.");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				System.out.println();
				switch(menu) {
				case 2:
					printStudent();
					System.out.println();
					break;
				case 9:
					System.out.println("메인으로 돌아갑니다.");
					System.out.println();
					break;
				default:
					System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
					System.out.println();
					break;
				}
			}
		}
	}
	public void insertStudent() {
		String name, major;
		int age, grade;
		double height, weight;
		char again = 'y';
		while(again != 'N' && again != 'n') {
			System.out.print("학생 이름 : ");
			name = sc.next();
			System.out.print("학생 나이 : ");
			age = sc.nextInt();
			System.out.print("학생 키 : ");
			height = sc.nextDouble();
			System.out.print("학생 몸무게 : ");
			weight = sc.nextDouble();
			System.out.print("학생 학년 : ");
			grade = sc.nextInt();
			System.out.print("학생 전공 : ");
			major = sc.next();
			pc.insertStudent(name, age, height, weight, grade, major);
			if(pc.personCount()[0] < 3) {
				System.out.print("그만 하시려면 N(또는 n), 이어하시려면 아무키나 누르세요 : ");
				again = sc.next().charAt(0);
				System.out.println();
			}
			else if(pc.personCount()[0] == 3) {
				System.out.println("학생을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가를 종료하고 학생 메뉴로 돌아갑니다.");
				again = 'N';
				System.out.println();
				break;
			}
		}
		
	}
	public void printStudent() {
		for(int i = 0; i < pc.personCount()[0]; i++) {
			System.out.println(pc.printStudent()[i]);
		}
	}
	public void insertEmployee() {
		String name, dept;
		int age, salary;
		double height, weight;
		char again = 'y';
		while(again != 'N' && again != 'n') {
			System.out.print("사원 이름 : ");
			name = sc.next();
			System.out.print("사원 나이 : ");
			age = sc.nextInt();
			System.out.print("사원 키 : ");
			height = sc.nextDouble();
			System.out.print("사원 몸무게 : ");
			weight = sc.nextDouble();
			System.out.print("사원 급여 : ");
			salary = sc.nextInt();
			System.out.print("사원 부서 : ");
			dept = sc.next();
			pc.insertEmployee(name, age, height, weight, salary, dept);
			if(pc.personCount()[1] < 10) {
				System.out.print("그만 하시려면 N(또는 n), 이어하시려면 아무키나 누르세요 : ");
				again = sc.next().charAt(0);
			}
			else if(pc.personCount()[1] == 10) {
				System.out.println("사원을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가를 종료하고 사원 메뉴로 돌아갑니다.");
				again = 'N';
				break;
			}
		}
	}
	public void printEmployee() {
		for(int i = 0; i < pc.personCount()[1]; i++) {
			System.out.println(pc.printEmployee()[i]);
		}
	}
}

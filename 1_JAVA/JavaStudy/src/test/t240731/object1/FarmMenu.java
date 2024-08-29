package test.t240731.object1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Scanner;

public class FarmMenu{
	Scanner sc = new Scanner(System.in);
	FarmController fc = new FarmController();

	public void mainMenu() {
//		******* 메인 메뉴 *******
//		1. 직원메뉴 // adminMenu() 실행
//		2. 손님 메뉴 // customerMenu()
//		9. 종료 // “프로그램 종료.” 출력 후 main()으로 리턴
//		메뉴 번호 선택 : >> 입력 받음 // 메뉴 화면 반복 실행 처리
//		잘 못 입력 하였을 경우 "잘못 입력하였습니다. 다시 입력해주세요" 출력 후 반복

		System.out.println("========== KH 마트 ==========");
		while (true) {
			System.out.println("******* 메인 메뉴 *******");
			System.out.println("1. 직원메뉴");
			System.out.println("2. 손님 메뉴");
			System.out.println("9. 종료");
			System.out.print("메뉴 번호 선택 :");
			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				this.adminMenu();
				break;
			case 2:
				this.customerMenu();
				break;
			case 9:
				System.out.println("프로그램 종료");
				return;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
			}

		}

	}

	public void adminMenu() {
		while (true) {
			System.out.println("******* 직원 메뉴 *******");
			System.out.println("1. 새 농산물 추가");
			System.out.println("2. 종류 삭제");
			System.out.println("3. 수량 수정");
			System.out.println("4. 농산물 목록");
			System.out.println("9. 메인으로 돌아가기");
			System.out.print("메뉴 번호 선택 :");
			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				this.addNewKind();
				break;
			case 2:
				this.removeKind();
				break;
			case 3:
				this.changeAmount();
				break;
			case 4:
				this.printFarm();
				break;
			case 9:
				System.out.println("메인으로 돌아가기");
				return;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
			}

		}

	}

	public void customerMenu() {
		while (true) {
			System.out.println("******* 직원 메뉴 *******");
			System.out.println("1. 농산물 사기");
			System.out.println("2. 농산물 빼기");
			System.out.println("3. 구입한 농산물 보기");
			System.out.println("9. 메인으로 돌아가기");
			System.out.print("메뉴 번호 선택 :");
			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				this.buyFarm();
				break;
			case 2:
				this.removeFarm();
				break;
			case 3:
				this.printBuyFarm();
				break;
			case 9:
				System.out.println("메인으로 돌아가기");
				return;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
			}

		}

	}

	public void addNewKind() {
		while (true) {
			System.out.println("1. 과일 / 2. 채소 / 3. 견과");
			System.out.print("추가할 종류 번호 : ");
			int type = sc.nextInt();
			sc.nextLine();

			if (type != 1 && type != 2 && type != 3) {
				System.out.println("잘못 입력하셨습니다.");
				continue;
			}

			System.out.print("이름 : ");
			String name = sc.nextLine();

			System.out.print("수량 :");
			int amount = sc.nextInt();
			sc.nextLine();

			Farm newItem = null;
			
			switch (type) {
			case 1:
				newItem = new Fruit("과일", name);
				break;
			case 2:
				newItem = new Vegetable("채소", name);
				break;
			case 3:
				newItem = new Nut("견과", name);
				break;
			}
			if(fc.addNewKind(newItem, amount)) {
				System.out.println("새 농산물이 추가되었습니다.");
				break;
			}else {
				System.out.println("새 농산물 추가에 실패하였습니다. 다시 입력해주세요");
				
			}

		}

	}

	public void removeKind() {
		while (true) {
			System.out.println("1. 과일 / 2. 채소 / 3. 견과");
			System.out.print("삭제할 종류 번호 : ");
			
			int type = sc.nextInt();
			sc.nextLine();

			if (type != 1 && type != 2 && type != 3) {
				System.out.println("잘못 입력하셨습니다.");
				continue;
			}
			System.out.print("이름 : ");
			String name = sc.nextLine();

			Farm newItem = null;

			switch (type) {
			case 1:
				newItem = new Fruit("과일", name);
				break;
			case 2:
				newItem = new Vegetable("채소", name);
				break;
			case 3:
				newItem = new Nut("견과", name);
				break;
			}
			
			if(fc.removeKind(newItem)) {
				System.out.println("농산물 삭제에 성공하였습니다.");
				break;
			}else {
				System.out.println("농산물 삭제에 실패하였습니다. 다시 입력해주세요.");
			}
		}

	}

	public void changeAmount() {
		while (true) {
			System.out.println("1. 과일 / 2. 채소 / 3. 견과");
			System.out.print("삭제할 종류 번호 : ");
			
			int type = sc.nextInt();
			sc.nextLine();

			if (type != 1 && type != 2 && type != 3) {
				System.out.println("잘못 입력하셨습니다.");
				continue;
			}
			System.out.print("이름 : ");
			String name = sc.nextLine();

			System.out.print("수량 : ");
			int amount = sc.nextInt();
			sc.nextLine();
			
			Farm item = null;

			switch (type) {
			case 1:
				item = new Fruit("과일", name);
				break;
			case 2:
				item = new Vegetable("채소", name);
				break;
			case 3:
				item = new Nut("견과", name);
				break;
			}
			if(fc.changeAmount(item, amount)){
				System.out.println("농산물 수량이 수정되었습니다.");
				break;
			}else{
				System.out.println("수정에 실패했습니다. 다시 입력해 주세요.");
			}

		}

	}

	public void printFarm() {
		HashMap<Farm, Integer> farmMap = fc.printFarm();
		for(Farm f : farmMap.keySet()) {
			System.out.printf("%s(%d개)\n", f.toString(), farmMap.get(f) );
		}

	}

	public void buyFarm() {
		while (true) {
			System.out.println("1. 과일 / 2. 채소 / 3. 견과");
			System.out.print("삭제할 종류 번호 : ");
			
			int type = sc.nextInt();
			sc.nextLine();

			if (type != 1 && type != 2 && type != 3) {
				System.out.println("잘못 입력하셨습니다.");
				continue;
			}
			System.out.print("이름 : ");
			String name = sc.nextLine();

			Farm newItem = null;

			switch (type) {
			case 1:
				newItem = new Fruit("과일", name);
				break;
			case 2:
				newItem = new Vegetable("채소", name);
				break;
			case 3:
				newItem = new Nut("견과", name);
				break;
			}
			if(fc.buyFarm(newItem)) {
				System.out.println("구매에 성공하였습니다");
				break;
			}else {
				System.out.println("마트에 없는 물건이거나 수량이 없습니다. 다시 입력해주세요.");
			}
		}

	}

	public void removeFarm() {
		while (true) {
			System.out.println("1. 과일 / 2. 채소 / 3. 견과");
			System.out.print("삭제할 종류 번호 : ");
			
			int type = sc.nextInt();
			sc.nextLine();

			if (type != 1 && type != 2 && type != 3) {
				System.out.println("잘못 입력하셨습니다.");
				continue;
			}
			System.out.print("이름 : ");
			String name = sc.nextLine();

			Farm newItem = null;

			switch (type) {
			case 1:
				newItem = new Fruit("과일", name);
				break;
			case 2:
				newItem = new Vegetable("채소", name);
				break;
			case 3:
				newItem = new Nut("견과", name);
				break;
			}
			
			if(fc.removeFarm(newItem)) {
				System.out.println("구매 취소에 성공하였습니다.");
				break;
			}else {
				System.out.println("구매 목록에 존재하지않습니다. 다시 입력해주세요..");
			}
		}

	}

	public void printBuyFarm() {
		ArrayList<Farm> farmList = fc.printBuyFarm();
		for(int i=0; i<farmList.size(); i++) {
			System.out.println(farmList.get(i));
		}
		

	}

};

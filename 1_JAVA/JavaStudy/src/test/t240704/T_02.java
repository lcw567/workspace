package test.t240704;

import java.util.Scanner;

public class T_02 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String rank, a = "관리자", b = "회원", c = "비회원";
		
		System.out.print("권한을 확인하고자 하는 회원 등급 : ");
		rank = sc.next();
		if (rank.equals(a)) {
			System.out.println("회원관리 게시글관리 게시글작성 댓글작성 게시글조회");
		}
		else if (rank.equals(b)) {
			System.out.println("게시글작성 게시글조회 댓글작성");
		}
		else if (rank.equals(c)) {
			System.out.println("게시글조회");
		}
		
//		switch(rank) {
//		case "관리자": System.out.println("회원관리 게시글관리 게시글작성 댓글작성 게시글조회");
//		case "회원": System.out.println("게시글작성 게시글조회 댓글작성");
//		default : System.out.println("게시글조회");
//		}

	}

}

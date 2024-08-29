package test240715.object1;

public class Student {
	String name;
	int classRoom;
	double javaScore, sqlScore, practiceScore;
	
	
	
	public Student() {
		super();
	}
	public Student(String name, int classRoom, double javaScore, double sqlScore, double practiceScore) {
		super();
		this.name = name;
		this.classRoom = classRoom;
		this.javaScore = javaScore;
		this.sqlScore = sqlScore;
		this.practiceScore = practiceScore;
	}
	
	
	
	public String toString() {
		String res;
		res = getClassRoom() + "반 " + getName() + "학생 " + getJavaScore() + "점 " + getSqlScore() + "점 " + getPracticeScore() + "점 ";
		return res;
	}
	public Boolean isPassd() {
		Boolean res = false;
		double sum = 0, avg;
		sum = getJavaScore() + getSqlScore() + getPracticeScore();
		avg = sum/3;
		if(getJavaScore() >= 50 && getSqlScore() >= 50 && getPracticeScore() >= 50 && sum >= 60) res = true;
		return res;
	}
	public void reName() {
		int n;
		char ntoc;
		String ctos;
		n = (int)(Math.random() * 25) + 65;
		ntoc = (char)n;
		ctos = Character.toString(ntoc);
		n = (int)(Math.random() * 25) + 65;
		ntoc = (char)n;
		ctos = ctos + Character.toString(ntoc);
		n = (int)(Math.random() * 25) + 65;
		ntoc = (char)n;
		ctos = ctos + Character.toString(ntoc);
		setName(ctos);
	}
	public void reClass() {
		int n;
		n = (int)(Math.random() * 9) + 1;
		setClassRoom(n);
	}
	public void reTest() {
		int j, s, p;
		j = (int)(Math.random() * 100);
		s = (int)(Math.random() * 100);
		p = (int)(Math.random() * 100);
		setJavaScore(j);
		setSqlScore(s);
		setPracticeScore(p);
	}
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getClassRoom() {
		return classRoom;
	}
	public void setClassRoom(int classRoom) {
		this.classRoom = classRoom;
	}
	public double getJavaScore() {
		return javaScore;
	}
	public void setJavaScore(double javaScore) {
		this.javaScore = javaScore;
	}
	public double getSqlScore() {
		return sqlScore;
	}
	public void setSqlScore(double sqlScore) {
		this.sqlScore = sqlScore;
	}
	public double getPracticeScore() {
		return practiceScore;
	}
	public void setPracticeScore(double practiceScore) {
		this.practiceScore = practiceScore;
	}
}

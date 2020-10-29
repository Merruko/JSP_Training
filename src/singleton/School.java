package singleton;

public class School {	// 싱글톤 디자인 기법
	
	private static School instance;
	
	private School() {	// 생성할 수 없도록 접근 제한
		
	}
	
	public static School getInstance() {
		instance = new School();
		return instance;
	}
	
	public Student createId() {
		Student student = new Student();
		
		return student;
	}

}
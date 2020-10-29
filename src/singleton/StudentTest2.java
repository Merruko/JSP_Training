package singleton;

public class StudentTest2 {

	public static void main(String[] args) {
		
		School school = School.getInstance();	// 필요할 때 언제든지 생성 가능
		
		Student st1 = school.createId();
		System.out.println("학생 1 : " + st1.getStudentId());
		
		Student st2 = school.createId();
		System.out.println("학생 2 : " + st2.getStudentId());
		
		Student st3 = school.createId();
		System.out.println("학생 3 : " + st3.getStudentId());
		
	}

}
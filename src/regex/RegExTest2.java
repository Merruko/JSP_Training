package regex;

import java.util.regex.Pattern;

public class RegExTest2 {

	public static void main(String[] args) {
		//정규 표현식 예제
		String name = "세종대왕";
		String tel = "010-3355-7979";

		//유효성 검사
		boolean name_check = Pattern.matches("^[가-힣]*$", name);
		boolean tel_check = Pattern.matches("^01(?:0|1|[6-9])-(?:\\d{3}|\\d{4})-\\d{4}$", tel);
		
		//출력
		System.out.println("이름 : " + name_check);
		System.out.println("전화번호 : " + tel_check);
	
	}

}
package dao;

import java.io.Serializable;

public class Calculator implements Serializable{	// 직렬화
	
	private static final long serialVersionUID = 1L;
	// 버전 ID
	
	public Calculator() {
		
	}
	
	public int square(int n) {
		return n*n;
	}
	
}
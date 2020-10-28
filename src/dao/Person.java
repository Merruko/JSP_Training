package dao;

import java.io.Serializable;

public class Person implements Serializable{	// 직렬화

	private static final long serialVersionUID = 1L;
	// 버전 ID
	
	public Person() {
	}
	
	private int id = 20201013;
	private String name = "장그래";
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
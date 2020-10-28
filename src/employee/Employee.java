package employee;

import java.io.Serializable;
import java.sql.Date;

public class Employee implements Serializable{ // 클래스 직렬화
	
	private static final long serialVersionUID = 1L;
	
	private int companyId;
	private String passwd;
	private String name;
	private Date joinDate;
	
	public Employee() {
		
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

}
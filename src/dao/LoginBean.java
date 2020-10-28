package dao;

public class LoginBean {
	private String id;
	private String pw;
	
	// 데이터베이스가 따로 만들어지지 않은 상태에서 비교하기 위한 기준 값
	final String _userid = "myUser";	  
	final String _userpw = "0000";
		
	public LoginBean() {}
	
	//사용자 체크 메서드 
	public boolean checkUser() {
		if(id.equals(_userid) && pw.equals(_userpw)) {
			return true;
		}else {
			return false;
		}
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	
}
package sec01.ex01;

public class MemberVO {
	private String id; 
	private String pwd;
	private String name ;
	private String email ; 
	
//commit test
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setIdx(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public MemberVO() {
		super();
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	
}

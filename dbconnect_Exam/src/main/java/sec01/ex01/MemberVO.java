package sec01.ex01;

public class MemberVO {
	private String idx ;
	private String id; 
	private String passwd;
	private String name ;
	private String age ; 
	
	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getId() {
		return id;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public MemberVO() {
		super();
	}

	public String getIdx() {
		return idx;
	}

	public void setId(String id) {
		this.idx = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	};
	
	
	
}

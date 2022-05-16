package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO1 {

	private Connection con ;
	private PreparedStatement pstmt;
	private DataSource dataFactory;
	
	
	public MemberDAO1() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/mariaDB");
			System.out.println(dataFactory);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
}

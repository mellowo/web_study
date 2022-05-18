package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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
	
	public List<MemberVO> listMember(){
		List<MemberVO> vo = new ArrayList<MemberVO>();
		
		try {
			con = dataFactory.getConnection();
			System.out.println("커넥션 완료");
			String query = "select * from t_member";
			System.out.println("preparedStatement : " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			
			System.out.println(rs);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		return vo;
	}
	
}

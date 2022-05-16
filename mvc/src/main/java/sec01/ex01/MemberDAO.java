package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory; //커넥션 풀을 이용한 DB 연결 
	
	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/mariaDB");
		}catch (Exception e) {
			e.printStackTrace();
		}
		// TODO Auto-generated constructor stub
	}
	
	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			// connDB();
	
			 
			con = dataFactory.getConnection();  //dataFactory.getConnection(); -> 데이터베이스 연결
			System.out.println("커넥션완료");
			String query = "select * from t_member;";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(); //ResultSet객체로 query값 반환 
			
			/*
			   id      passwd      name      age
			 mellowo     11         lee       29
			 elelele     12         jee       30
			 */
			
			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString("pwd");
				String name = rs.getString("name");
				String email = rs.getString("email");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setName(name);
				vo.setEmail(email);
				vo.getPwd();
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	
}

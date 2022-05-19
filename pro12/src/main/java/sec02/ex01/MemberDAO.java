package sec02.ex01;

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
	private DataSource dataFactory;
	
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
	public List listMembers(MemberVO memberVO) {
		
		List memberList = new ArrayList();
		String _name = memberVO.getName();
		try {
			// connDB();		 
			con = dataFactory.getConnection();  //dataFactory.getConnection(); -> 데이터베이스 연결
			System.out.println("커넥션완료");
			String query = "select * from test";
			if((_name != null && _name.length()!=0)) {
				query +=" where name=?;";
				pstmt = con.prepareStatement(query);
				pstmt.setString(1, _name);
			}else {
				pstmt = con.prepareStatement(query);
			}
			System.out.println("prepareStatememt: " + query);
			ResultSet rs = pstmt.executeQuery(); //ResultSet객체로 query값 반환 
			
			/*
			   id      passwd      name      age
			 mellowo     11         lee       29
			 elelele     12         jee       30
			 */
			
			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString("pw");
				String name = rs.getString("name");
				//String age = rs.getString("age");
				String email = rs.getString("email");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setName(name);
				vo.setPasswd(passwd);
				vo.setEmail(email);
				memberList.add(vo);
				
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}

	
	
}

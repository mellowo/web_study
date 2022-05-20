package sec01.ex01;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	public List listMembers() {
		
		List list = new ArrayList();

		try {
			// connDB();		 
			con = dataFactory.getConnection();  //dataFactory.getConnection(); -> 데이터베이스 연결
			System.out.println("커넥션완료");
			String query = "select * from test";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery(); //ResultSet객체로 query값 반환 
			
			/*
			   id      passwd      name      email
			 mellowo     11         lee       29
			 elelele     12         jee       30
			 */
			
			while (rs.next()) {
				String id = rs.getString("id");
				String pwd = rs.getString("pw");
				String name = rs.getString("name");
				String email = rs.getString("email");
				MemberBean vo =new MemberBean();
				vo.setId(id);
				vo.setName(name);
				vo.setPwd(pwd);
				vo.setEmail(email);
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
	
	public void addMember(MemberBean memberBean) {
		
		try {
			Connection con = dataFactory.getConnection();
			String id =memberBean.getId();
			String pwd = memberBean.getPwd();
			String name = memberBean.getName();
			String email = memberBean.getEmail();
			
			String query = "insert into test";
			query += " (id,pw,name,email)";
			query += " values(?,?,?,?)";
			System.out.println("prepareStatement : " + query);
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,pwd);
			pstmt.setString(3,name);
			pstmt.setString(4,email);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	
}

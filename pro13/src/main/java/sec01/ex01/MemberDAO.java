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
 
	public List listMembers(MemberBean bean) {
		
		List memberList = new ArrayList();
		String _name = bean.getName();
		try {
			// connDB();		 
			con = dataFactory.getConnection();  //dataFactory.getConnection(); -> 데이터베이스 연결
			System.out.println("커넥션완료");
			String query = "select * from test";
//			if((_name != null && _name.length()!=0)) {
//				query +=" where name=?;";
//				pstmt = con.prepareStatement(query);
//				pstmt.setString(1, _name);
//			}else {
//				pstmt = con.prepareStatement(query);
//			}
			pstmt = con.prepareStatement(query);
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
				MemberBean bean1 = new MemberBean();
				bean1.setId(id);
				bean1.setName(name);
				bean1.setPwd(passwd);
				bean1.setEmail(email);
				memberList.add(bean1);
				
			}
			rs.close();
			pstmt.close();
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return memberList;
	}
	
	public void addMember(MemberBean bean) {
		try {
			Connection con = dataFactory.getConnection();
			String id = bean.getId();
			String pwd = bean.getPwd();
			String name = bean.getName();
			String email = bean.getEmail();
			String query = "insert into test";
			query += " (id,pwd,name,email)";
			query += " values(?,?,?,?)";
			System.out.println("prepareStatement : " + query);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.setString(4, email);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	
	
}

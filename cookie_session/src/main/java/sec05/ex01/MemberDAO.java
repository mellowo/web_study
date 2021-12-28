package sec05.ex01;

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
	
	public List<MemberVO> listMembers() {
		List<MemberVO> list = new ArrayList<MemberVO>();
		try {
			// connDB();
			con = dataFactory.getConnection();
			System.out.println("커넥션완료");
			String query = "select * from test1;";
			System.out.println("prepareStatememt: " + query);
			pstmt = con.prepareStatement(query);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				String age = rs.getString("age");
				MemberVO vo = new MemberVO();
				vo.setId(id);
				vo.setPasswd(passwd);
				vo.setName(name);
				vo.setAge(age);
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
	
	public boolean isExisted(MemberVO memberVO) {
		boolean result = false;
		String id = memberVO.getId();
		String passwd = memberVO.getPasswd();
		
		System.out.println(id);
		System.out.println(passwd);
		
		try {
			con = dataFactory.getConnection();
			//select case when COUNT(*)=0 then 'false' else 'true' end as result from test1 where id='mellowo'
			String query = "select case when count(*)=0 then 'false' else 'true' end as result from test1";
			query += " where id=? and passwd=?";
			
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			ResultSet rs =pstmt.executeQuery();
			rs.next();
			result = Boolean.parseBoolean(rs.getString("result"));
			System.out.println("result=" + result);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
}

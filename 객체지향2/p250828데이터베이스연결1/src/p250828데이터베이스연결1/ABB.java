package p250828데이터베이스연결1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ABB {

	public static void main(String[] args) {
		
		try {
			// 1. JDBC 드라이버 적재
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@10.30.3.96:1521:orcl";
			String user = "c##2101004";
			String pw = "p2101004";
			// 2. 데이터베이스 연결
			Connection con = 
					DriverManager.getConnection(url, user, pw);
			
			System.out.println("데이터베이스 연결 성공");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}

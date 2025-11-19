package bp2101004;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

    static {
        try {
            Class.forName("org.h2.Driver");
            System.out.println("H2 드라이버 로드 성공!");
        } catch (ClassNotFoundException e) {
            System.out.println("H2 드라이버 로드 실패...");
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        String url = "jdbc:h2:tcp://localhost/~/dev/h2db/bpdb";
        String user = "scott";
        String password = "tiger";

        Connection conn = DriverManager.getConnection(url, user, password);
        System.out.println("H2 DB 연결 성공!");
        return conn;
    }
}

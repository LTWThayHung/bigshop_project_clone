package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBContext {
	

//	  public Connection getConnection() {
//	        Connection connection = null;
//	        String url = "jdbc:sqlserver://QUAITHUCUAFUTO:1433;databaseName=Big_store_1;encrypt=false";
//	        String user = "sa";
//	        String password = "1084";
//
//	        try {
//	            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//	            connection = DriverManager.getConnection(url, user, password);	
//	        } catch (ClassNotFoundException e) {
//	            System.out.println("Không tìm thấy driver cần thiết!");
//	            e.printStackTrace();
//	        } catch (SQLException e) {
//	            System.out.println("Kết nối thất bại!");
//	            e.printStackTrace();
//	        }
//	        
//	        return connection;
//	    }
	public Connection getConnection() {
        Connection connection = null;
        String url = "jdbc:sqlserver://DESKTOP-J8TUGI3:1433;databaseName=Big_store_1;encrypt=false";
        String user = "sa";
        String password = "123";

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, password);	
        } catch (ClassNotFoundException e) {
            System.out.println("Không tìm thấy driver cần thiết!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Kết nối thất bại!");
            e.printStackTrace();
        }
        
        return connection;
    }

//	    public static void main(String[] args) {
//	        Connection conn = DBContext.getConnection();
//	        if (conn != null) {
//	            System.out.println("Kết nối thành công đến SQL Server!");
//	            // Thực hiện các thao tác với cơ sở dữ liệu ở đây
//	            try {
//	                conn.close();
//	            } catch (SQLException e) {
//	                e.printStackTrace();
//	            }
//	        }
//	    }
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Account;
import entity.Products;

public class DigitalDAO {
	public Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Products> search(String txtSearch) {
		List<Products> list = new ArrayList<>();
		// cau query truy van user va pass tuong ung
		String query = "select * from Product where [title] like ?";

		try {
			// mo ket noi toi sql server
			conn = new DBContext().getConnection();
			// nem cau lanh query sang sql server
			ps = conn.prepareStatement(query);
			// set txtxSearch vao ?
			ps.setString(1, "%" + txtSearch + "%");
			// excute query va nhan ket qua tra ve
			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Products(
						rs.getInt(1),
						rs.getInt(2),
						rs.getString(3), 
						rs.getDouble(4), 
						rs.getDouble(5),
						rs.getString(6), 
						rs.getString(7)));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public static void main(String[] args) throws SQLException {
		DigitalDAO dao = new DigitalDAO();
		for (Products prod : dao.search("h")) {
			System.out.println(prod);
		}
	}
}

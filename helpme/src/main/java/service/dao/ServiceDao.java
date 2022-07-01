package service.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import service.model.Service;
import service.model.Writer;
import service.service.ModifyServiceRequest;
import jdbc.JdbcUtil;

public class ServiceDao {

	public Service insert(Connection conn, Service service) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into service "
					+ "(sno, sname, categoryNo, price, sCon, likeit, viewcount,pImage) " + "values (?,?,?,?,?,0,0,?)");
			pstmt.setInt(1, service.getSNo());
			pstmt.setString(2, service.getSName());
			pstmt.setInt(3, service.getCategoryNo());
			pstmt.setInt(4, service.getPrice());
			pstmt.setString(5, service.getsCon());
			pstmt.setString(6, service.getpImage());
			int insertedCount = pstmt.executeUpdate();

			if (insertedCount > 0) {
				stmt = conn.createStatement();
				rs = stmt.executeQuery("select last_insert_sno() from service");
				if (rs.next()) {
					Integer newNo = rs.getInt(1);
					return new Service(newNo, service.getSName(), service.getCategoryNo(), service.getPrice(),
							service.getsCon(), service.getLikeIt(), 0, service.getpImage(), service.getWriter());
				}
			}
			return null;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
			JdbcUtil.close(pstmt);
		}
	}

	public int selectCount(Connection conn) throws SQLException {
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select count(*) from service");
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	public List<Service> select(Connection conn, int startRow, int size) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from service " + "order by service_sno desc limit ?, ?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, size);
			rs = pstmt.executeQuery();
			List<Service> result = new ArrayList<>();
			while (rs.next()) {
				result.add(convertService(rs));
			}
			return result;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	private Service convertService(ResultSet rs) throws SQLException {
		return new Service(rs.getInt("service_sno"),
				rs.getString("sname"),
				rs.getInt("category"),
				rs.getInt("price"),
				rs.getString("scon"),
				rs.getInt("likeit"),
				rs.getInt("viewcount"),
				rs.getString("pImage"),
				new Writer(
				rs.getString("writer_id"),
						rs.getString("writer_name")));
	}

	public Service selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from service where service_sno = ?");
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			Service service = null;
			if (rs.next()) {
				service = convertService(rs);
			}
			return service;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(pstmt);
		}
	}

	public void increaseViewcount(Connection conn, int no) throws SQLException {
		try (PreparedStatement pstmt = conn
				.prepareStatement("update service set viewcount = viewcount + 1 " + "where service_sno = ?")) {
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
		}
	}

	public int update(Connection conn, ModifyServiceRequest modReq) throws SQLException {
		try (PreparedStatement pstmt = conn
				.prepareStatement("update service set sname = ?, categoryno = ?, price = ?, scon = ?, pimage = ?" + "where service_sno = ?")) {
			pstmt.setString(1, modReq.getsName());
			pstmt.setInt(2, modReq.getCategoryNo());
			pstmt.setInt(3, modReq.getPrice());
			pstmt.setString(4, modReq.getsCon());
			pstmt.setString(5, modReq.getpImage());
			pstmt.setInt(6, modReq.getsNo());
			return pstmt.executeUpdate();
		}
	}

	public int delete(Connection conn, int no) throws SQLException {
		try (PreparedStatement pstmt = conn.prepareStatement("delete from service where service_sno = ?")) {
			pstmt.setInt(1, no);
			return pstmt.executeUpdate();
		}
	}
}

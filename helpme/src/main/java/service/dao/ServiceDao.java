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

	public int insert(Connection conn, Service service) throws SQLException {
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("insert into svc "
					+ "(sno, sname, categoryNo, price, sCon, likeit, viewcount,pImage,scount,userId) " + "values (svc_seq.nextval,?,?,?,?,0,0,?,0,?)");
			pstmt.setString(1, service.getSName());
			pstmt.setInt(2, service.getCategoryNo());
			pstmt.setInt(3, service.getPrice());
			pstmt.setString(4, service.getsCon());
			pstmt.setString(5, service.getpImage());
			pstmt.setString(6, service.getWriter().getId());
			int insertedCount = pstmt.executeUpdate();

			return insertedCount;
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
			rs = stmt.executeQuery("select count(*) from svc");
			if (rs.next()) {
				return rs.getInt(1);
			}
			return 0;
		} finally {
			JdbcUtil.close(rs);
			JdbcUtil.close(stmt);
		}
	}

	public List<Service> select(Connection conn, int startRow, int size, String orderType) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			if(orderType.equals("lastest")) {
			pstmt = conn.prepareStatement("select * from (SELECT ROWNUM AS NUM, svc.* FROM svc) WHERE num BETWEEN ? AND ? order by sno desc");
			}else if(orderType.equals("sCount")) {
				pstmt = conn.prepareStatement("select * from (SELECT ROWNUM AS NUM, svc.* FROM svc) WHERE num BETWEEN ? AND ? order by sCount desc");
			}else if(orderType.equals("viewCount")) {
				pstmt = conn.prepareStatement("select * from (SELECT ROWNUM AS NUM, svc.* FROM svc) WHERE num BETWEEN ? AND ? order by viewCount desc");
			}else if(orderType.equals("price")) {
				pstmt = conn.prepareStatement("select * from (SELECT ROWNUM AS NUM, svc.* FROM svc) WHERE num BETWEEN ? AND ? order by price asc");
			}
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
		return new Service(rs.getInt("sno"),
				rs.getString("sname"),
				rs.getInt("categoryno"),
				rs.getInt("price"),
				rs.getString("scon"),
				rs.getInt("likeit"),
				rs.getInt("viewcount"),
				rs.getString("pImage"),
				new Writer(rs.getString("userId"),"a"));
		
	}

	public Service selectById(Connection conn, int no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from svc where sno = ?");
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
				.prepareStatement("update svc set viewcount = viewcount + 1 " + "where sno = ?")) {
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
		}
	}

	public int update(Connection conn, ModifyServiceRequest modReq) throws SQLException {
		try (PreparedStatement pstmt = conn
				.prepareStatement("update svc set sname = ?, categoryno = ?, price = ?, scon = ?, pimage = ?" + "where sno = ?")) {
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
		try (PreparedStatement pstmt = conn.prepareStatement("delete from svc where sno = ?")) {
			pstmt.setInt(1, no);
			return pstmt.executeUpdate();
		}
		
	}
}

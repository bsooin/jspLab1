package service.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;

import service.dao.ServiceDao;
import service.model.Service;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteServiceService {

	private ServiceDao articleDao = new ServiceDao();

	public Integer write(WriteRequest req) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			Service service = toService(req);
			Service savedService = articleDao.insert(conn, service);
			if (savedService == null) {
				throw new RuntimeException("fail to insert article");
			}

			conn.commit();

			return savedService.getSno();
		} catch (SQLException e) {
			JdbcUtil.rollback(conn);
			throw new RuntimeException(e);
		} catch (RuntimeException e) {
			JdbcUtil.rollback(conn);
			throw e;
		} finally {
			JdbcUtil.close(conn);
		}
	}

	private Service toService(WriteRequest req) {
		Date now = new Date();
		return new Service(null, req.getWriter(), req.getTitle(),null, null, null, 0, 0);
	}
}

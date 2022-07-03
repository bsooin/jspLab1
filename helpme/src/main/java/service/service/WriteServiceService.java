package service.service;

import java.sql.Connection;
import java.sql.SQLException;

import service.dao.ServiceDao;
import service.model.Service;
import jdbc.JdbcUtil;
import jdbc.connection.ConnectionProvider;

public class WriteServiceService {

	private ServiceDao serviceDao = new ServiceDao();

	public void write(Service service) {
		Connection conn = null;
		try {
			conn = ConnectionProvider.getConnection();
			conn.setAutoCommit(false);

			int check = serviceDao.insert(conn, service);
			if (check == 0) {
				throw new RuntimeException("fail to insert article");
			}

			conn.commit();

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

}

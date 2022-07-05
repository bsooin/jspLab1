package service.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import service.dao.ServiceDao;
import service.model.Service;
import jdbc.connection.ConnectionProvider;

public class ListServiceService {

	private ServiceDao articleDao = new ServiceDao();
	private int size = 8;

	public ServicePage getServicePage(int pageNum,String orderType,int cat) {
		try (Connection conn = ConnectionProvider.getConnection()) {
			int total = articleDao.selectCount(conn);
			
			List<Service> content = articleDao.select(
					conn, (pageNum - 1) * size, (pageNum - 1) * size+size,orderType,cat);
			
			return new ServicePage(total, pageNum, size, content);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}

package service.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;
import service.service.ListServiceService;
import service.service.ServicePage;

public class ListServiceHandler implements CommandHandler {

	private ListServiceService listService = new ListServiceService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		String pageNoVal = req.getParameter("pageNo");
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		ServicePage servicePage = listService.getServicePage(pageNo);
		req.setAttribute("servicePage", servicePage);
		return "/WEB-INF/view/service/shop.jsp";
	}

}

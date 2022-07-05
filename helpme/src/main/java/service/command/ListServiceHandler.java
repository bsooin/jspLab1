package service.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import auth.service.User;
import mvc.command.CommandHandler;
import service.service.ListServiceService;
import service.service.ServicePage;

public class ListServiceHandler implements CommandHandler {

	private ListServiceService listService = new ListServiceService();

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		User user = (User)req.getSession(false).getAttribute("member");
		user = new User("a","a");
		String orderType = req.getParameter("orderType");
		String pageNoVal = req.getParameter("pageNo");
		int pageNo = 1;
		if (pageNoVal != null) {
			pageNo = Integer.parseInt(pageNoVal);
		}
		ServicePage servicePage = listService.getServicePage(pageNo,orderType);
		req.setAttribute("orderType", orderType);
		req.setAttribute("servicePage", servicePage);
		req.setAttribute("member", user);
		return "/WEB-INF/view/service/shop.jsp";
	}

}

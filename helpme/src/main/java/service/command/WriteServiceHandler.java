package service.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.model.Writer;
import service.service.WriteRequest;
import auth.service.User;
import mvc.command.CommandHandler;
import service.service.WriteServiceService;

public class WriteServiceHandler implements CommandHandler {
	private static final String FORM_VIEW = "/WEB-INF/view/service/admission-apply.jsp";
	private WriteServiceService writeService = new WriteServiceService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {	
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}

	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}
	
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		Map<String, Boolean> errors = new HashMap<>();
		req.setAttribute("errors", errors);

		User user = (User)req.getSession(false).getAttribute("authUser");
		WriteRequest writeReq = createWriteRequest(user, req);
		writeReq.validate(errors);
		
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		int newArticleNo = writeService.write(writeReq);
		req.setAttribute("newArticleNo", newArticleNo);
		
		return "/WEB-INF/view/service/newServiceSuccess.jsp";
	}

	private WriteRequest createWriteRequest(User user, HttpServletRequest req) {
		return new WriteRequest(
				new Writer(user.getId(), user.getName()),
				req.getParameter("title"),
				req.getParameter("content"));
	}
}

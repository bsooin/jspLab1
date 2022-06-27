package service.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import service.model.Service;
import service.model.Writer;
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
		
		if (req.getParameter("sName") == null || req.getParameter("sName").trim().isEmpty()) {
			errors.put("sName", Boolean.TRUE);
		}
		
		
		if (!errors.isEmpty()) {
			return FORM_VIEW;
		}
		
		String uploadPath = req.getRealPath("upload");
		System.out.println("path=" + uploadPath);
		
		int size = 10 * 1024 * 1024;
		
		int sNo, categoryNo,price;
		String sName,sCon,pImage;
		
		Service service = null;
		Writer writer = new Writer(user.getId(),user.getName());
		try {
			
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		sNo = Integer.parseInt(multi.getParameter("sno"));
		sName = multi.getParameter("sname");
		categoryNo = Integer.parseInt(multi.getParameter("categoryNo"));
		price = Integer.parseInt(multi.getParameter("price"));
		sCon = multi.getParameter("sCon");
		pImage = multi.getFilesystemName("pImage");

		service = new Service(sNo,sName,categoryNo,price,sCon,0,0,pImage,writer);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		int newArticleNo = writeService.write(service);
		req.setAttribute("newArticleNo", newArticleNo);
		
		return "/WEB-INF/view/service/newServiceSuccess.jsp";
	}

}




















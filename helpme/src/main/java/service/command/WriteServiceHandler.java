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

		User user = (User)req.getSession(false).getAttribute("member");
		
		String uploadPath = req.getRealPath("upload");
		
		int size = 10 * 1024 * 1024;
		
		int categoryNo,price;
		String sName,sCon,pImage;
		
		Service service = null;
		Writer writer = new Writer(user.getId(),user.getName());
		try {
			
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "utf-8",
				new DefaultFileRenamePolicy());

		
		sName = multi.getParameter("sName");
		categoryNo = Integer.parseInt(multi.getParameter("categoryNo"));
		price = Integer.parseInt(multi.getParameter("price"));
		sCon = multi.getParameter("sCon");
		pImage = multi.getFilesystemName("pImage");
		
		
		service = new Service(0,sName,categoryNo,price,sCon,0,0,pImage,writer,0);
		
		}catch (Exception e) {
			e.printStackTrace();
		}
		writeService.write(service);
		
		return "/WEB-INF/view/service/newServiceSuccess.jsp";
	}

}





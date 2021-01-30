package aurora.master.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import aurora.master.service.EventDispService;
import net.sf.json.JSONObject;

@Controller
public class EventDispController {
	static Logger logger = Logger.getLogger(EventDispController.class);

	@Autowired
	private EventDispService eventDispService;
	
	@RequestMapping(value = "catEventReg.do", method = RequestMethod.POST)
	public @ResponseBody
	Boolean catEventReg(HttpServletRequest request,
			HttpServletResponse response,long id) {
		ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    HttpSession session = attr.getRequest().getSession();
		response.setHeader("Cache-Control", "no-cache");
		Boolean flag = false;
		try
		{
			long c_id = (long) session.getAttribute("loginUser");
			flag =eventDispService.catEventReg(id, c_id);
		}
		catch(Exception e)
		{
			flag = false;
		}
		return flag;
	}
	
	@RequestMapping(value = "EventGridData.do")
	public @ResponseBody
	List<JSONObject> getGridData(HttpServletRequest request,
			HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		List<JSONObject> ar = eventDispService.getEventList(request);
		return ar;
	}
}

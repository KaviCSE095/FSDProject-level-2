package aurora.master.controller;

import java.text.ParseException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import aurora.master.model.EventBook;

import aurora.master.service.EventRegService;


@Controller
public class EventRegController {
	static Logger logger = Logger.getLogger(EventRegController.class);

	@Autowired
	private EventRegService eventRegService;

	@RequestMapping(value = "EventReg.do")
	public String eventReg(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/masters/EventReg";
	}
	
	@RequestMapping(value = "eventBook.do", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> regEvent(HttpServletRequest request,
			HttpServletResponse response,  @ModelAttribute("eventBook") EventBook eventBook,BindingResult bindingResult) throws ParseException {
		response.setHeader("Cache-Control", "no-cache");
		Map<String, Object> map = eventRegService.bookEvent(eventBook, request);
		String message=map.get("message").toString();
		map.put("message", message);	
		
		return map;
	}
		
}

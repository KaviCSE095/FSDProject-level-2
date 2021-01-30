package aurora.common.controller;

import java.text.ParseException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import aurora.common.model.CatReg;
import aurora.common.service.CatRegService;

@Controller
public class CatRegController {
	static Logger logger = Logger.getLogger(CatRegController.class);

	@Autowired
	private CatRegService catRegService;
	
	@RequestMapping(value = "catLoginVal.do", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> regTeam(HttpServletRequest request,
			HttpServletResponse response,  @ModelAttribute("catReg") CatReg catReg,BindingResult bindingResult) throws ParseException {
		response.setHeader("Cache-Control", "no-cache");
		Map<String, Object> map = catRegService.regCatTeam(catReg, request);
		String message=map.get("message").toString();
		map.put("message", message);	
		
		return map;
	}
}

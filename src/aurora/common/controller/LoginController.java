package aurora.common.controller;


import java.util.ArrayList;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.sf.json.JSONObject;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.sun.org.apache.xerces.internal.impl.xpath.regex.ParseException;

import aurora.common.dao.UserDao;
import aurora.common.model.CatReg;
import aurora.common.service.SystemSetupService;
import aurora.common.service.UserService;
import aurora.master.model.Employee;





@Controller
public class LoginController {

	static Logger logger = Logger.getLogger(LoginController.class);
	
	@RequestMapping(value = "catHome.do")
	public String loginpass(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/masters/EventDisp";
	}

	@RequestMapping(value = "loginfailed.do")
	public String loginerror(ModelMap model) {
		model.addAttribute("error", "true");
		return "/common/LoginForm";
	}

	@RequestMapping(value = "login.do")
	public String login(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/common/LoginForm";
	}


	@RequestMapping(value = "welcome.do")
	public String processForm(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
	
		if(httpSession != null && !httpSession.isNew()) {
			return "/common/Home";
		} else {
			return "/common/LoginForm";
		}
		
		

	}
	@RequestMapping(value = "ClientDashBoard.do")
	public String processClientForm(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
	
		if(httpSession != null && !httpSession.isNew()) {
			return "/masters/clientDashboard";
		} else {
			return "/common/LoginForm";
		}
		
		

	}
	@RequestMapping(value = "ContractorDashBoard.do")
	public String ContractorDashBoard(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
	
		if(httpSession != null && !httpSession.isNew()) {
			return "/masters/contractorDashboard";
		} else {
			return "/common/LoginForm";
		}
		
		

	}
	
	@Autowired
	private UserService userService;
	
	/*@Autowired
	private SystemSetupService systemSetupService;
	*/
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private SystemSetupService systemSetupService;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "LoginValidation1.do", method = RequestMethod.POST)
	public @ResponseBody String getValidateAdmin( HttpServletRequest request,
			HttpServletResponse response)  {
		
		String loginId = "", password = "";
		String check1="Admin",check2="KRKBAdmin4";
		//PasswordPolicy passwordPolicy=new PasswordPolicy();
		//UserLog log = new UserLog()
		
		loginId =  request.getParameter("loginId");
		password = request.getParameter("password");
		JSONObject jsonObject = new JSONObject();
		if(loginId.toString().equals(check1) &&  password.toString().equals(check2))
		{
			jsonObject.put("keyword", "SUCCESS");
		}
		else {
			jsonObject.put("keyword", "FAIL");
			jsonObject.put("message", "The username or password you entered is incorrect !");
		}
		return jsonObject.toString();
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "LoginValidation.do", method = RequestMethod.POST)
	public @ResponseBody String getValidateUser( HttpServletRequest request,
			HttpServletResponse response)  {
		
		String loginId = "", password = "";
		//PasswordPolicy passwordPolicy=new PasswordPolicy();
		//UserLog log = new UserLog();
		List<?> list = new ArrayList();
		long loginAttempts=0;
	    ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
	    HttpSession session = attr.getRequest().getSession();
		int access = 0;
		JSONObject jsonObject = new JSONObject();
		try {
			
			loginId = (String) request.getParameter("loginId");
			password = (String) request.getParameter("password");
			
			// SystemSetup systemSetup = systemSetupService.getSystemSetup();
				
				// check login credentials with application login table
				List<CatReg>  uList = userService.getUsers(loginId, password);
				
				//Added password policy check to login
				if(uList.size()>0){
					
						if(uList.get(0).getTeam_pwd().equals(password)){
							jsonObject.put("keyword", "SUCCESS");
							jsonObject.put("data", uList);
							 CatReg user=uList.get(0);
							 session.setAttribute("loginUser", user.getCatTeamId());
								/*session.setAttribute("currentUserKey", user.getUserKey());
								session.setAttribute("currentUserType", user.getUserType());
								session.setAttribute("currentRefId", user.getRefID());
								session.setAttribute("currentUserEmailID", user.getEmailId());
							 session.setAttribute("bilingual", objSysSetup.getSsBilingualYN());
							 
							 if(objSysSetup.getSsBilingualYN()=='Y')
							{
								session.setAttribute("langp", objSysSetup.getSlLangP());
								session.setAttribute("langs", objSysSetup.getSlLangS());
								
							}
							else  
							{
								session.setAttribute("langp", objSysSetup.getSlLangP());
							}
							// if(session.getAttribute("lang")==null)
							// {
								 session.setAttribute("lang", objSysSetup.getSlLangP().getSlCode());
							// }
							 jsonObject.put("message", "welcome.do?lang="+session.getAttribute("lang"));
							 session.setAttribute("themeName",user.getUserThemeName());
								session.setAttribute("userHomePageAttr", user.getUserHomePageAttr());
								
								session.setAttribute("userDefaultModule",user.getUserDefaultModule());
								
								String lastLoginTime = userService.getLastLogOnTime(Long
										.parseLong(user.getUserKey() + ""));
								session.setAttribute("lastLogOnTime",lastLoginTime);*/
						}
						else{
							//log.setActivityFlag("LF");
							//log.setUser(Long.parseLong(uList.get(0).getUserKey() + ""));
							//log.setCreatedUser(Long.parseLong(uList.get(0).getUserKey() + ""));
							//userService.enterUserLog(log);
							jsonObject.put("keyword", "FAIL");
							jsonObject.put("message", "The username or password you entered is incorrect !");
						}
				}
			
		} catch (Exception e) {
		
			if(e.getMessage().contains("Cannot open connection")){
			
			throw new BadCredentialsException("Please Configure DB");
		}else{
			throw new BadCredentialsException(e.getMessage());
		}
			
		}	
		
		/*if (access ==0 && list.size() <= 0) {
			
			logger.debug("Bad credentials");
			throw new BadCredentialsException("The username or password you entered is incorrect !");
			
		}
		if (access == 0) {
			logger.debug("UnAuthorized");
			throw new BadCredentialsException("UnAuthorized !");
		}*/

		//return "welcome.do";
		return jsonObject.toString();
		
	}
	
	


	@RequestMapping(value = "checkConnection.do", method = RequestMethod.GET)
	public @ResponseBody
	String CheckConnection(HttpServletRequest request,
			HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		if (request.getSession().getAttribute("currentUserKey") != null) {
			return "ACTIVE";
		} else {

			return "INACTIVE";
		}

	}
	
	@RequestMapping(value = "register.do")
	public String regiter(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/common/RegisterForm";
	}
	
	@RequestMapping(value = "start.do")
	public String welcome(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/common/Welcome";
	}
	@RequestMapping(value = "insertEmp.do")
	public String insertEmployee(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/common/insertEmployee";
	}
	
	@RequestMapping(value = "gallery.do")
	public String gallery(ModelMap model, HttpSession httpSession,
			HttpServletRequest httpServletRequest) {
		return "/common/gallery";
	}


		
	
	@RequestMapping(value = "addEmployee.do", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> addEmployee(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("employee") Employee employee,BindingResult bindingResult) throws ParseException  {
		response.setHeader("Cache-Control", "no-cache");
		Map<String, Object> map =userService.addEmployee(employee, request);
		String message=map.get("message").toString();
		map.put("message", message);
		return map;
		
	}
	@RequestMapping(value = "updateEmployee.do", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> updateCountry(HttpServletRequest request,
			HttpServletResponse response, @ModelAttribute("employee") Employee employee,BindingResult bindingResult) throws ParseException {
		response.setHeader("Cache-Control", "no-cache");
		Map<String, Object> map = userService.updateEmployee(employee, request);
		String message=map.get("message").toString();
		map.put("message", message);	
		
		return map;
	}
	
	@RequestMapping(value = "deleteEmployee.do", method = RequestMethod.POST)
	public @ResponseBody
	Map<String, Object> deleteEmployee(HttpServletRequest request,
			HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		Map<String, Object> map = userService.deleteEmployee(request);
		return map;
	}
	
	@RequestMapping(value = "EmployeeGridData.do")
	public @ResponseBody
	List<JSONObject> getEmployeeGridData(HttpServletRequest request,
			HttpServletResponse response) {
		response.setHeader("Cache-Control", "no-cache");
		List<JSONObject> ar = userService.getEmployeeList(request);
		return ar;
	}
}

package aurora.common.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aurora.common.dao.CatRegDAO;
import aurora.common.model.CatReg;
import aurora.master.service.CountryService;
import aurora.util.ConstantsMsg;
import aurora.util.JsonReaderWriter;
import net.sf.json.JSONObject;

@Service
public class CatRegService {
	static Logger logger = Logger.getLogger(CatRegService.class);

	@Autowired
	private CatRegDAO catRegDAO;
	
	@Autowired
	MessageSource messageSource;
	
	@Transactional
	public Map<String, Object> regCatTeam(CatReg catReg,
			HttpServletRequest request) {
		CatReg cat= null;
		JSONObject jsonObject=null;
		String msg = ConstantsMsg.SUCCESS;
		String lMsg = "messages.TeamSave.success";
		String fMsg=messageSource.getMessage(lMsg, null, request.getLocale());
		try {
			
			cat= (CatReg) catRegDAO.add(catReg);
			jsonObject=JsonReaderWriter.getJSONObjectFromClassObject(cat);
		} 
		catch (Exception e) {
			msg = ConstantsMsg.FAILURE;
			fMsg = e.getMessage();
			logger.error("Transaction Failed in Save Method >>", e);
		}

		return JsonReaderWriter.mapOK(jsonObject, msg,fMsg);

	}
}

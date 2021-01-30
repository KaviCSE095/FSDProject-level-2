package aurora.master.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aurora.master.dao.EventDispDAO;
import aurora.master.model.Country;
import aurora.master.model.EventBook;
import aurora.util.ConstantsMsg;
import aurora.util.JsonReaderWriter;
import net.sf.json.JSONObject;
@Service
public class EventDispService {
	static Logger logger = Logger.getLogger(EventDispService.class);

	@Autowired
	private EventDispDAO eventDispDAO;
	
	@Autowired
	MessageSource messageSource;
	@SuppressWarnings("unchecked")
	@Transactional
	public List<JSONObject> getEventList(HttpServletRequest request) {

		List<JSONObject> ar = new ArrayList<JSONObject>();
		try {
			
			List<EventBook> list = (ArrayList<EventBook>) eventDispDAO.getAll();
			for(EventBook eventBook:list){
				ar.add(JsonReaderWriter.getJSONObjectFromClassObject(eventBook));
			}
		} catch (Exception e) {
			logger.error("Transaction Failed in getModuleList Method >>", e);
		}
		return ar;
	}
	/*public String catRegEvent(long id,long c_id) {
		String event = null;
		String msg = ConstantsMsg.SUCCESS;
		String lMsg = null;
		try {
			//Long key = Long.parseLong(request.getParameter("key"));
			event = (String) eventDispDAO.getObjectByKey(id,c_id);
		} catch (Exception e) {
			msg = ConstantsMsg.FAILURE;
			lMsg = e.getMessage();
			logger.error("Transaction Failed in getStudentByKey Method >>", e);
		}
		return event;
	}*/
	@Transactional
	public Boolean catEventReg(long id,long c_id) throws Exception {
	
		
		return eventDispDAO.catEventReg(id,c_id);
	}
}

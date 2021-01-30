package aurora.master.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import aurora.master.dao.EventRegDAO;
import aurora.master.model.EventBook;
import aurora.util.ConstantsMsg;
import aurora.util.JsonReaderWriter;
import aurora.util.UserDateFormat;
import net.sf.json.JSONObject;

@Service
public class EventRegService {
	static Logger logger = Logger.getLogger(EventRegService.class);

	@Autowired
	private EventRegDAO eventRegDAO;
	
	@Autowired
	MessageSource messageSource;
	@SuppressWarnings("unchecked")
	@Transactional
	public Map<String, Object> getCountryByKey(long key) {

		EventBook eventBook = null;
		String msg = ConstantsMsg.SUCCESS;
		String lMsg = null;
		JSONObject jsonObject=null;
		try {
			//Long key = Long.parseLong(request.getParameter("key"));
			eventBook = (EventBook) eventRegDAO.getObjectByKey(key);
			jsonObject=JsonReaderWriter.getJSONObjectFromClassObject(eventBook);
		} catch (Exception e) {
			msg = ConstantsMsg.FAILURE;
			lMsg = e.getMessage();
			logger.error("Transaction Failed in getStudentByKey Method >>", e);
		}
		return JsonReaderWriter.mapOK(jsonObject, msg,lMsg);
	}
	
	@Transactional
	public Map<String, Object> bookEvent(EventBook eventBook,
			HttpServletRequest request) {
		EventBook evt= null;
		JSONObject jsonObject=null;
		String msg = ConstantsMsg.SUCCESS;
		String lMsg = "messages.EventSave.success";
		String fMsg=messageSource.getMessage(lMsg, null, request.getLocale());
		try {
			//eventBook.setEvent_date(UserDateFormat.getNewDateTimeFormat(ConstantsMsg.DD_MON_YYYY));
			evt= (EventBook) eventRegDAO.add(eventBook);
			jsonObject=JsonReaderWriter.getJSONObjectFromClassObject(evt);
		} 
		catch (Exception e) {
			msg = ConstantsMsg.FAILURE;
			fMsg = e.getMessage();
			logger.error("Transaction Failed in Save Method >>", e);
		}

		return JsonReaderWriter.mapOK(jsonObject, msg,fMsg);

	}
}

package aurora.master.dao;

import java.util.List;

import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import aurora.common.ANavigationDao;
import aurora.common.IMasterDao;
import aurora.master.model.Country;
import aurora.master.model.EventBook;
@SuppressWarnings("unchecked")
@Repository("EventDispDAO")
public class EventDispDAO extends ANavigationDao implements IMasterDao{
	@Autowired @Qualifier("hibernateTemplate")
	private HibernateTemplate hibernateTemplate;

	@Override
	public Object add(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object update(Object obj) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object delete(long key) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<?> getAll() throws Exception {
		String userQuery = "select e.evtId as evtId,e.event_cat as event_cat,e.event_Tit as event_Tit,e.event_loc as event_loc,e.event_date as event_date,e.no_of_days as no_of_days,e.exp_no_guests as exp_no_guests,e.food_cnt as food_cnt,e.cat_ser as cat_ser,"+
		"e.abt as abt,e.cus_fname as cus_fname,e.cus_lname as cus_lname,e.cus_mail as cus_mail,e.contactNo as contactNo from EventBook e where e.cat_ser='y' and status='booked'";
		
		List<EventBook> list = hibernateTemplate.getSessionFactory()
				.getCurrentSession().createQuery(userQuery)
				.setResultTransformer(Transformers.aliasToBean(EventBook.class))
				.list();

		return list;
	}

	@Override
	public List<?> getList(String lang) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getAll(String lang) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getObjectByKey(long key) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("deprecation")
	public Boolean catEventReg(long id,long c_id) throws Exception{
		Boolean flag = false;
	
		try
		{
			
			
			String updateCurr ="update EventBook set event_status='assigned',catering="+c_id+" where evtId="+id;
		    hibernateTemplate.bulkUpdate(updateCurr);

			flag = true;
		}
		catch(Exception e)
		{
			flag = false;
		}
		
		return flag ;
	}
}

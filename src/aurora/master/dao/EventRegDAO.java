package aurora.master.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import aurora.common.ANavigationDao;
import aurora.common.IMasterDao;


@SuppressWarnings("unchecked")
@Repository("eventRegDAO")

public class EventRegDAO extends ANavigationDao implements IMasterDao{
	
	@Autowired @Qualifier("hibernateTemplate")
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public Object add(Object eventBook) throws Exception {
		hibernateTemplate.clear();
		hibernateTemplate.flush();
		hibernateTemplate.save(eventBook);
		return eventBook;
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

	@Override
	public Object getObjectByKey(long key) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getAll(String lang) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> getList(String lang) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}

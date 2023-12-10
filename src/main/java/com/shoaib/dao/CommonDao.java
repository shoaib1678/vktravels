package com.shoaib.dao;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Disjunction;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





@Repository
@Transactional
public class CommonDao {

	@Autowired
	private SessionFactory sessionFactory;
	/*
	 * @Autowired Session session;
	 */

	public int addDataToDb(Object objectdata) {
		Integer i = (Integer) sessionFactory.getCurrentSession().save(objectdata);
		return i;
	}

	public void updateDataToDb(Object objectdata) {
		sessionFactory.getCurrentSession().update(objectdata);
	}

	public Object getDataByMap(Map<String, Object> mapdata, Object objectdata, String orderbycolumn, String orderby,
			int start, int length) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(objectdata.getClass());
		for (Entry<String, Object> mapdataex : mapdata.entrySet()) {
			System.out.println(mapdataex.getKey() + "-" + mapdataex.getValue());
			criteria.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
		}
		if (orderby != null) {
			if (orderby.equalsIgnoreCase("asc")) {
				criteria.addOrder(Order.desc(orderbycolumn));
			} else {
				criteria.addOrder(Order.asc(orderbycolumn));
			}
		}
		criteria.setFirstResult(start);
		if (length != -1) {
			criteria.setMaxResults(length);
		}
		List<Object> list = criteria.list();
		return list;
	}
	
	public int getDataByMapSize(Map<String, Object> mapdata, Object objectdata, String orderbycolumn, String orderby,
			int start, int length) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(objectdata.getClass());
		for (Entry<String, Object> mapdataex : mapdata.entrySet()) {
			System.out.println(mapdataex.getKey() + "-" + mapdataex.getValue());
			criteria.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
		}
		if (orderby != null) {
			if (orderby.equalsIgnoreCase("asc")) {
				criteria.addOrder(Order.desc(orderbycolumn));
			} else {
				criteria.addOrder(Order.asc(orderbycolumn));
			}
		}
		criteria.setFirstResult(start);
		if (length != -1) {
			criteria.setMaxResults(length);
		}
		List<Object> list = criteria.list();
		return list.size();
	}
	
	public int deleteById(Map<String, Object> where) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Query q = session.createQuery("delete from " + where.get("tablename") + "  where " + where.get("column") + " =:"
				+ where.get("column") + "");
		q.setParameter(where.get("column").toString(), where.get("value"));
		int result = q.executeUpdate();
		transaction.commit();
		session.clear();
		session.close();
		return result;
	}
	
	
	public int update_status(int id,String column,String table,String status) {
		String str = "update "+table+" set status = '"+status+"' where "+column+"  = :Id";
		System.out.println(str);
		Query query = sessionFactory.getCurrentSession().createQuery(str);
		query.setParameter("Id", id);
		int i = query.executeUpdate();
		return i;
	}
		public int updateMethodForAll(Map<String, Object> updatecolumn, String tableName, Map<String, Object> wheredata) {
			try {
				String query = "";
				String wherequery = "";
				for (Map.Entry<String, Object> entry : updatecolumn.entrySet()) {
					if(entry.getValue() instanceof Integer){
						if(Integer.parseInt(entry.getValue()+"") > 0){
							if (!query.equalsIgnoreCase("")) {
								query = query + " ," + entry.getKey().trim() + " = '" + entry.getValue() + "'";
							} else {
								query = query + " " + entry.getKey().trim() + " = '" + entry.getValue() + "'";
							}
						}					
					}
					else if(entry.getValue() instanceof List){
						
						
					}
					else{
						if (entry.getValue() != null) {
							if (!query.equalsIgnoreCase("")) {
								query = query + " ," + entry.getKey().trim() + " = '" + entry.getValue() + "'";
							} else {
								query = query + " " + entry.getKey().trim() + " = '" + entry.getValue() + "'";
							}
						}
					}				
				}
				for (Map.Entry<String, Object> entry : wheredata.entrySet()) {
					if (entry.getValue() != null) {
						if (!wherequery.equalsIgnoreCase("")) {
							wherequery = wherequery + " and " + entry.getKey().trim() + " = '" + entry.getValue() + "'";
						} else {
							wherequery = wherequery + " " + entry.getKey().trim() + " = '" + entry.getValue() + "'";
						}
					}

				}
				String query1 = "Update " + tableName + " set " + query + " where " + wherequery;
				Query sql = sessionFactory.openSession().createQuery(query1);
				int result = sql.executeUpdate();
				return result;
			} catch (Exception e) {
				e.printStackTrace();
				return -1;
			}
		}
		
		public Object getDataByMapSearchAnd(Map<String, Object> anddata, Map<String, Object> mapdata, Object objectdata,
				String orderbycolumn, String orderby, int start, int length) {
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(objectdata.getClass());
			for (Entry<String, Object> mapdataex : anddata.entrySet()) {
				if (mapdataex.getValue() instanceof Integer) {
					criteria.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
				} else {
					criteria.add(Restrictions.eq(mapdataex.getKey(), (String) mapdataex.getValue()));
				}
			}
			Disjunction data = Restrictions.disjunction();
			for (Entry<String, Object> mapdataex : mapdata.entrySet()) {
				if (mapdataex.getValue() instanceof Integer) {
					data.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
				} else {
					data.add(Restrictions.ilike(mapdataex.getKey(), (String) mapdataex.getValue(), MatchMode.ANYWHERE));
				}
			}
			criteria.add(data);
			System.out.println(data);
			if (orderby != null) {
				if (!orderby.equalsIgnoreCase("asc")) {
					criteria.addOrder(Order.desc(orderbycolumn));
				} else {
					criteria.addOrder(Order.asc(orderbycolumn));
				}
			}
			criteria.setFirstResult(start);
			if (length != -1) {
				criteria.setMaxResults(length);
			}
			List<Object> list = criteria.list();
			return list;
		}
		
		public int getDataByMapSearchAndSize(Map<String, Object> anddata, Map<String, Object> mapdata, Object objectdata,
				String orderbycolumn, String orderby) {
			Criteria criteria = sessionFactory.getCurrentSession().createCriteria(objectdata.getClass());
			for (Entry<String, Object> mapdataex : anddata.entrySet()) {
				if (mapdataex.getValue() instanceof Integer) {
					criteria.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
				} else {
					criteria.add(Restrictions.eq(mapdataex.getKey(), (String) mapdataex.getValue()));
				}

			}
			Disjunction data = Restrictions.disjunction();
			for (Entry<String, Object> mapdataex : mapdata.entrySet()) {
				if (mapdataex.getValue() instanceof Integer) {
					data.add(Restrictions.eq(mapdataex.getKey(), mapdataex.getValue()));
				} else {
					data.add(Restrictions.ilike(mapdataex.getKey(), (String) mapdataex.getValue(), MatchMode.ANYWHERE));
				}
			}
			criteria.add(data);
			if (orderby != null) {
				if (!orderby.equalsIgnoreCase("asc")) {
					criteria.addOrder(Order.desc(orderbycolumn));
				} else {
					criteria.addOrder(Order.asc(orderbycolumn));
				}
			}

			List<Object> list = criteria.list();
			return list.size();
		}

}

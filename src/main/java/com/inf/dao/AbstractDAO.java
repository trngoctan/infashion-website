/**
 * 
 */
package com.inf.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class AbstractDAO<PK extends Serializable, T> implements BaseDAO<PK, T> {

	private final Class<T> persistentClass;

//	@PersistenceContext
//	private EntityManager manager;
	
	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public AbstractDAO() {
		this.persistentClass = (Class<T>) ((ParameterizedType) this.getClass().getGenericSuperclass())
				.getActualTypeArguments()[1];
	}

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
//	protected EntityManager getEntityManager(){
//		return manager;
//	}

	@SuppressWarnings("unchecked")
	public T load(PK key) {
		return (T) getSession().get(persistentClass, key);
	}

	public T save(T entity) {
		getSession().persist(entity);
		return entity;
	}

	public T update(T entity) {
		getSession().merge(entity);
		return entity;
	}

	public void delete(T entity) {
		getSession().delete(entity);
	}

	protected Criteria createEntityCriteria() {
		return getSession().createCriteria(persistentClass);
	}

	public int count(Criteria paramCriteria) {
		try {
			Object localObject = paramCriteria.uniqueResult();
			if ((localObject instanceof Integer)) {
				return ((Integer) localObject).intValue();
			}
			if ((localObject instanceof Long)) {
				return ((Long) localObject).intValue();
			}
		} catch (Exception localException) {
			// logger.warning("Could not execute the query or convert value,
			// message: [" + localException.getMessage() + "]");
			localException.printStackTrace();
		}
		return 0;
	}

	public int count(Query paramQuery) {
		try {
			Object localObject = paramQuery.getSingleResult();
			if ((localObject instanceof Long)) {
				return ((Long) localObject).intValue();
			}
			if ((localObject instanceof Integer)) {
				return ((Integer) localObject).intValue();
			}
		} catch (Exception localException) {
			// logger.warning("Could not execute the query or convert value,
			// message: [" + localException.getMessage() + "]");
			localException.printStackTrace();
		}
		return 0;
	}

	@SuppressWarnings("unchecked")
	public List<T> query() {
		return createEntityCriteria().list();
	}

	@SuppressWarnings("unchecked")
	public List<T> query(Criteria criteria) {
		if (criteria == null) {
			return null;
		}
		return criteria.list();
	}
}

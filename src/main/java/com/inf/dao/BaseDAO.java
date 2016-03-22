package com.inf.dao;

import java.util.List;

import org.hibernate.Criteria;

public interface BaseDAO<PK, T> {
	public T load(PK key);
	
	public T save(T entity);
	
	public T update(T entity);
	
	public void delete(T entity);
	
	public List<T> query();
	
	public List<T> query(Criteria paramCriteria);
}

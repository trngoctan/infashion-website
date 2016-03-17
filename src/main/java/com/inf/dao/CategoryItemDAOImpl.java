package com.inf.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

@Repository
@Transactional
public class CategoryItemDAOImpl extends DAOBase<CategoryItemEntity> implements CategoryItemDAO 
{
	
	@PersistenceContext
	private EntityManager manager;

	/*
	 * (non-Javadoc)
	 * @see com.inf.dao.CategoryItemDAO#search(java.lang.String, int, int)
	 */
	@Override
	public SearchWrapper<CategoryItemEntity> search(String keyword, int start, int size) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * (non-Javadoc)
	 * @see com.inf.dao.CategoryItemDAO#save(com.inf.model.CategoryItemEntity)
	 */
	@Override
	public CategoryItemEntity save(CategoryItemEntity item) {
		manager.persist(item);
		return item;
	}

	/*
	 * (non-Javadoc)
	 * @see com.inf.dao.CategoryItemDAO#update(long, com.inf.model.CategoryItemEntity)
	 */
	@Override
	public CategoryItemEntity update(long id, CategoryItemEntity item) {
		item.setId(id);
		manager.merge(item);
		return item;
	}
}
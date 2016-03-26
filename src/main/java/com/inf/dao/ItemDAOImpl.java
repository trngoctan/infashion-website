package com.inf.dao;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.inf.data.SearchWrapper;
import com.inf.model.ItemEntity;

@Repository
@Transactional
public class ItemDAOImpl extends AbstractDAO<Long, ItemEntity> implements ItemDAO 
{

	/* (non-Javadoc)
	 * @see com.inf.dao.ItemDAO#findByCategory(long)
	 */
	@SuppressWarnings("unchecked")
	@Override
	public SearchWrapper<ItemEntity> findByCategory(long categoryId) {
		Query query = this.getSession().createQuery("ItemEntity.findByCategory");
		
		SearchWrapper<ItemEntity> wrapper = new SearchWrapper<ItemEntity>();
		
		return wrapper;
	}

	/*
	 * (non-Javadoc)
	 * @see com.inf.dao.ItemDAO#search(java.lang.String, int, int)
	 */
	@Override
	public SearchWrapper<ItemEntity> search(String keyword, int start, int size) {
		SearchWrapper<ItemEntity> searchWrapper = new SearchWrapper<ItemEntity>();
		List<ItemEntity> entities = this.query();
		searchWrapper.setList(entities);
		
		return searchWrapper;
	}
}
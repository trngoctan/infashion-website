package com.inf.dao;

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
		org.hibernate.Query query = this.getSession().createQuery("ItemEntity.findByCategory");
		
		SearchWrapper<ItemEntity> wrapper = new SearchWrapper<ItemEntity>();
		
		return wrapper;
	}
}
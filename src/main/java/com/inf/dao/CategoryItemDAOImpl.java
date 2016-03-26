package com.inf.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

@Repository("CategoryItemDAOImpl")
@Transactional
public class CategoryItemDAOImpl extends AbstractDAO<Long, CategoryItemEntity> implements CategoryItemDAO {

	/*
	 * (non-Javadoc)
	 * @see com.inf.dao.CategoryItemDAO#search(java.lang.String, int, int)
	 */
	@Override
	public SearchWrapper<CategoryItemEntity> search(String keyword, int start, int size) {
		SearchWrapper<CategoryItemEntity> searchWrapper = new SearchWrapper<CategoryItemEntity>();
		List<CategoryItemEntity> entities = this.query();
		searchWrapper.setList(entities);
		searchWrapper.setTotal(entities.size());

		return searchWrapper;
	}		
}
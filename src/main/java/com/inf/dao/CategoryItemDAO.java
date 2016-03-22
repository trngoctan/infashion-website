package com.inf.dao;

import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

public interface CategoryItemDAO extends BaseDAO<Long, CategoryItemEntity> {
	public SearchWrapper<CategoryItemEntity> search(String keyword, int start, int size);
}
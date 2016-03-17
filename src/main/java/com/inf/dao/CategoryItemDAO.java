package com.inf.dao;

import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

public interface CategoryItemDAO {
	public SearchWrapper<CategoryItemEntity> search(String keyword, int start, int size);

	public CategoryItemEntity save(CategoryItemEntity item);

	public CategoryItemEntity update(long id, CategoryItemEntity item);
}
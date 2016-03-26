package com.inf.dao;

import com.inf.data.SearchWrapper;
import com.inf.model.ItemEntity;

public interface ItemDAO extends BaseDAO<Long, ItemEntity>{
	public SearchWrapper<ItemEntity> findByCategory(long categoryId);
	public SearchWrapper<ItemEntity> search(String keyword, int start, int size);
}
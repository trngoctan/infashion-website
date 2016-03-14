package com.inf.dao;

import com.inf.data.SearchWrapper;
import com.inf.model.ItemEntity;

public interface ItemDAO {
	public SearchWrapper<ItemEntity> findByCategory(long categoryId);

	public ItemEntity save(ItemEntity item);

	public ItemEntity update(long id, ItemEntity item);
}
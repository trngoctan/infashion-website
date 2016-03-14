package com.inf.data;

import java.io.Serializable;
import java.util.List;

public class SearchWrapper<T> implements Serializable {

	private static final long serialVersionUID = 1L;

	// contain one page of result, T is must serial
	protected List<T> list;
	
	//total result according search criteria
	protected int total;

	/**
	 * SearchWrapper constructor
	 */
	public SearchWrapper() {
		super();
	}

	/**
	 * Get the list result
	 * @return
	 */
	public List<T> getList() {
		return list;
	}

	/**
	 * Set the list result
	 * @return
	 */
	public void setList(List<T> list) {
		this.list = list;
	}

	/**
	 * Get total result
	 * @return
	 */
	public int getTotal() {
		return total;
	}

	/**
	 * Set total result
	 * @param total
	 */
	public void setTotal(int total) {
		this.total = total;
	}		
}
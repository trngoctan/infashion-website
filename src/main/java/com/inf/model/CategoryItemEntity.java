package com.inf.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table (name="category_item")
@JsonIgnoreProperties(ignoreUnknown=true)
public class CategoryItemEntity implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id;
	private String name;
	private String url;
	
	public CategoryItemEntity(){}

	public CategoryItemEntity(Long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	
	@JsonIgnore
	@OneToMany(mappedBy="category",cascade=CascadeType.PERSIST)
    private List<ItemEntity> items = new ArrayList<ItemEntity>();
	
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the items
	 */
	public List<ItemEntity> getItems() {
		return items;
	}

	/**
	 * @param items the items to set
	 */
	public void setItems(List<ItemEntity> items) {
		this.items = items;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", url=" + url +  "]";
	}

}

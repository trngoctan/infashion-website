package com.inf.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table (name="items")
@NamedQueries(value={
		@NamedQuery(name="ItemEntity.findByCategory", query="SELECT item FROM ItemEntity item WHERE item.category.id = :id")
	})
public class ItemEntity implements Serializable 
{
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue
	private Long id;
	
	@NotEmpty
	private String subject;
	@NotEmpty
	private String brief;
	@NotEmpty
	private String content;
	private String tags;
	@NotNull
	private Date created;
	private String image;
	private int viewed;
	@NotNull
	@ManyToOne
	private CategoryItemEntity category;
	
	public ItemEntity() {}
	
	public ItemEntity(String subject, String brief, String content, CategoryItemEntity category) {
        this.subject = subject;
        this.brief = brief;
        this.content = content;
        this.category = category;
    }
     
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the subject
	 */
	public String getSubject() {
		return subject;
	}

	/**
	 * @param subject the subject to set
	 */
	public void setSubject(String subject) {
		this.subject = subject;
	}

	/**
	 * @return the brief
	 */
	public String getBrief() {
		return brief;
	}

	/**
	 * @param brief the brief to set
	 */
	public void setBrief(String brief) {
		this.brief = brief;
	}

	/**
	 * @return the content
	 */
	public String getContent() {
		return content;
	}

	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		this.content = content;
	}

	/**
	 * @return the tags
	 */
	public String getTags() {
		return tags;
	}

	/**
	 * @param tags the tags to set
	 */
	public void setTags(String tags) {
		this.tags = tags;
	}

	/**
	 * @return the created
	 */
	public Date getCreated() {
		return created;
	}

	/**
	 * @param created the created to set
	 */
	public void setCreated(Date created) {
		this.created = created;
	}

	/**
	 * @return the image
	 */
	public String getImage() {
		return image;
	}

	/**
	 * @param image the image to set
	 */
	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @return the viewed
	 */
	public int getViewed() {
		return viewed;
	}

	/**
	 * @param viewed the viewed to set
	 */
	public void setViewed(int viewed) {
		this.viewed = viewed;
	}

	@Override
	public String toString() {
		return "News [id=" + id 
				+ ", subject=" + subject
				+ ", brief=" + brief 
				+ ", content=" + content
				+ ", tag=" + tags + "]";
	}
}
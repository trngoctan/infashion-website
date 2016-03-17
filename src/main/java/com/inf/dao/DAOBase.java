/**
 * 
 */
package com.inf.dao;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;

public class DAOBase<T> {
	
	public Long count(final EntityManager em, final CriteriaQuery<T> criteria)
	  {
	    final CriteriaBuilder builder = em.getCriteriaBuilder();
	    final CriteriaQuery<Long> countCriteria=builder.createQuery(Long.class);
	    countCriteria.select(builder.count(criteria.getRoots().iterator().next()));
	    final Predicate
	            groupRestriction=criteria.getGroupRestriction(),
	            fromRestriction=criteria.getRestriction();
	    if(groupRestriction != null){
	      countCriteria.having(groupRestriction);
	    }
	    if(fromRestriction != null){
	      countCriteria.where(fromRestriction);
	    }
	    countCriteria.groupBy(criteria.getGroupList());
	    countCriteria.distinct(criteria.isDistinct());
	    return em.createQuery(countCriteria).getSingleResult();
	  }
}

package com.inf.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.ParameterExpression;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.inf.data.SearchWrapper;
import com.inf.model.ItemEntity;

@Repository
@Transactional
public class ItemDAOImpl extends DAOBase<ItemEntity> implements ItemDAO 
{
	
	@PersistenceContext
	private EntityManager manager;

	/* (non-Javadoc)
	 * @see com.inf.dao.ItemDAO#findByCategory(long)
	 */
	@SuppressWarnings("unchecked")
	@Override
	public SearchWrapper<ItemEntity> findByCategory(long categoryId) {
		Query query = manager.createNamedQuery("ItemEntity.findByCategory", ItemEntity.class);
		
		SearchWrapper<ItemEntity> wrapper = new SearchWrapper<ItemEntity>();
		wrapper.setList((List<ItemEntity>)query.getResultList());
		
		
//		CriteriaBuilder criteriaBuilder = manager.getCriteriaBuilder();
//		CriteriaQuery<ItemEntity> criteria = criteriaBuilder.createQuery(ItemEntity.class);
//		
//		  CriteriaQuery<Country> q = cb.createQuery(Country.class);
//		  Root<Country> c = q.from(Country.class);
//		  ParameterExpression<Integer> p = cb.parameter(Integer.class);
//		  q.select(c).where(cb.gt(c.get("population"), p));
		
		Session session = manager.unwrap(Session.class);
        Criteria criteria = session.createCriteria(ItemEntity.class);
        criteria.add(Restrictions.eq("key", "123").ignoreCase());
//        if (target != null) {
//           criteria.add(Restrictions.like("target", target, MatchMode.ANYWHERE).ignoreCase());
//        }
		criteria.setMaxResults(10);
		
		return wrapper;
	}

	/* (non-Javadoc)
	 * @see com.inf.dao.ItemDAO#save(com.inf.model.ItemEntity)
	 */
	@Override
	public ItemEntity save(ItemEntity item) {
		// TODO Auto-generated method stub
		return null;
	}

	/* (non-Javadoc)
	 * @see com.inf.dao.ItemDAO#update(long, com.inf.model.ItemEntity)
	 */
	@Override
	public ItemEntity update(long id, ItemEntity item) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
//	public List<EmployeeEntity> getAllEmployees() 
//	{
//		List<EmployeeEntity> employees = manager.createQuery("Select a From EmployeeEntity a", EmployeeEntity.class).getResultList();
//        return employees;
//	}
//	
//	public List<DepartmentEntity> getAllDepartments() 
//	{
//		List<DepartmentEntity> depts = manager.createQuery("Select a From DepartmentEntity a", DepartmentEntity.class).getResultList();
//        return depts;
//	}
//	
//	public DepartmentEntity getDepartmentById(Integer id) 
//	{
//        return manager.find(DepartmentEntity.class, id);
//	}
//	
//	public void addEmployee(EmployeeEntity employee) 
//	{
//		//Use null checks and handle them
//		employee.setDepartment(getDepartmentById(employee.getDepartment().getId()));
//		manager.persist(employee);
//	}
	
}
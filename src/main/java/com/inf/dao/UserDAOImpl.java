package com.inf.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.inf.model.UserEntity;

@Repository
@Transactional
public class UserDAOImpl extends AbstractDAO<Long, UserEntity> implements UserDAO 
{

	
}
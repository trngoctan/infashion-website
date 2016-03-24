package com.inf.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inf.dao.UserDAO;
import com.inf.data.Result;
import com.inf.model.UserEntity;
import com.inf.utils.UserUtils;

@Controller
@Transactional
public class UserController {
	
	@Autowired
	UserDAO dao;
	
	public UserController(){}
	
	/**
	 * Method will be called in initial page load at GET /admin/user
	 * */
	@RequestMapping(value = "/admin/user", method = RequestMethod.GET)
	public String setupForm(Model model) {
		return "admin/userView";
	}
	
	@RequestMapping(value = "/admin/user/save", method = RequestMethod.POST, consumes={MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody UserEntity save(@RequestBody UserEntity item, HttpServletRequest request) {
		if(!StringUtils.hasLength(item.getUserName())){
			return null;
		}
		
		item.setPassword(UserUtils.MD5(item.getPassword()));
		return dao.save(item);
	}
	
	@RequestMapping(value = "/admin/user/update", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody UserEntity update(@RequestBody UserEntity item, HttpServletRequest request) {
		UserEntity entity = dao.load(item.getId());
		if(entity == null){
			return null;
		}
		
		entity.setFullName(item.getFullName());
		entity.setPhone(item.getPhone());
		entity.setEmail(item.getEmail());
		entity.setRoles(item.getRoles());
		
		return dao.update(entity);
	}
	
	@RequestMapping(value = "/admin/user/resetpassword", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody UserEntity resetPassword(@RequestBody UserEntity item, HttpServletRequest request) {
		UserEntity entity = dao.load(item.getId());
		if(entity == null){
			return null;
		}
		
		entity.setPassword(UserUtils.MD5(item.getPassword()));
		
		return dao.update(entity);
	}
	
	@RequestMapping(value = "/admin/user/delete", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Result delete(@RequestBody UserEntity item, HttpServletRequest request) {
		dao.delete(item);
		return new Result(true);
	}
}

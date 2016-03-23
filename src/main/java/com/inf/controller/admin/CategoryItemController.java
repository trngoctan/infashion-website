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

import com.inf.dao.CategoryItemDAO;
import com.inf.data.Result;
import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

@Controller
@Transactional
public class CategoryItemController {
	
	@Autowired
	CategoryItemDAO categoryItemDAO;
	
	public CategoryItemController(){}
	
	/**
	 * Method will be called in initial page load at GET /admin/categoryitem
	 * */
	@RequestMapping(value = "/admin/categoryitem", method = RequestMethod.GET)
	public String setupForm(Model model) {
		return "admin/categoryItemView";
	}
	
	@RequestMapping(value = "/admin/categoryitem/list", method = RequestMethod.GET)
	public @ResponseBody SearchWrapper<CategoryItemEntity> getSearchResultViaAjax() {
		return categoryItemDAO.search(null, 0, 0);
	}
	
	@RequestMapping(value = "/admin/categoryitem/save", method = RequestMethod.POST, 
			consumes={MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_FORM_URLENCODED_VALUE, 
					MediaType.APPLICATION_OCTET_STREAM_VALUE})
	public @ResponseBody CategoryItemEntity save(@RequestBody CategoryItemEntity item, HttpServletRequest request) {
		if(!StringUtils.hasLength(item.getName())){
			return null;
		}
		System.out.println("Name: " + item.getName());
		return categoryItemDAO.save(item);
	}
	
	@RequestMapping(value = "/admin/categoryitem/update", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody CategoryItemEntity update(@RequestBody CategoryItemEntity item, HttpServletRequest request) {
		if(!StringUtils.hasLength(item.getName())){
			return null;
		}
		
		if(StringUtils.isEmpty(item.getId())){
			return null;
		}
		return categoryItemDAO.update(item);
	}
	
	@RequestMapping(value = "/admin/categoryitem/delete", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Result delete(@RequestBody CategoryItemEntity item, HttpServletRequest request) {
		categoryItemDAO.delete(item);
		return new Result(true);
	}
}

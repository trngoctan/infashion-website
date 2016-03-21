package com.inf.controller.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;

import com.inf.dao.CategoryItemDAO;
import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

@Controller
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
		SearchWrapper<CategoryItemEntity> wrapper = new SearchWrapper<CategoryItemEntity>();
		List<CategoryItemEntity> result = new ArrayList<CategoryItemEntity>();
		result.add(new CategoryItemEntity(1L, "Xa hoi"));
		result.add(new CategoryItemEntity(2L, "Kinh te"));
		result.add(new CategoryItemEntity(3L, "Thoi su"));
		wrapper.setList(result);
		wrapper.setTotal(100);
		return wrapper;
	}
	
	@RequestMapping(value = "/admin/categoryitem/save", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody CategoryItemEntity save(@RequestBody CategoryItemEntity item, HttpServletRequest request) {
		if(!StringUtils.hasLength(item.getName())){
			return null;
		}
		
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
		return categoryItemDAO.update(item.getId(), item);
	}
}

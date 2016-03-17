package com.inf.controller.admin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;

@Controller
public class CategoryItemController {

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
		result.add(new CategoryItemEntity(1, "Xa hoi"));
		result.add(new CategoryItemEntity(2, "Kinh te"));
		result.add(new CategoryItemEntity(3, "Thoi su"));
		wrapper.setList(result);
		wrapper.setTotal(100);
		return wrapper;
	}
}

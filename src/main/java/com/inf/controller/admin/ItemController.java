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
import com.inf.dao.ItemDAO;
import com.inf.data.Result;
import com.inf.data.SearchWrapper;
import com.inf.model.CategoryItemEntity;
import com.inf.model.ItemEntity;

@Controller
@Transactional
public class ItemController {
	
	@Autowired
	ItemDAO dao;
	
	public ItemController(){}
	
	/**
	 * Method will be called in initial page load at GET /admin/item
	 * */
	@RequestMapping(value = "/admin/item", method = RequestMethod.GET)
	public String setupForm(Model model) {
		return "admin/itemView";
	}
	
	@RequestMapping(value = "/admin/item/save", method = RequestMethod.POST, consumes={MediaType.APPLICATION_JSON_VALUE})
	public @ResponseBody ItemEntity save(@RequestBody ItemEntity item, HttpServletRequest request) {
		return dao.save(item);
	}
	
	@RequestMapping(value = "/admin/item/update", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ItemEntity update(@RequestBody ItemEntity item, HttpServletRequest request) {
		if(!StringUtils.hasLength(item.getSubject())){
			return null;
		}
		
		if(StringUtils.isEmpty(item.getId())){
			return null;
		}
		
		ItemEntity entity = dao.load(item.getId());
		if(entity == null){
			return null;
		}
		
		entity.setSubject(item.getSubject());
		entity.setBrief(item.getBrief());
		entity.setContent(item.getContent());
		entity.setTags(item.getTags());
		entity.setImage(item.getImage());
		
		return dao.update(entity);
	}
	
	@RequestMapping(value = "/admin/item/delete", method = RequestMethod.POST, consumes=MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody Result delete(@RequestBody ItemEntity item, HttpServletRequest request) {
		dao.delete(item);
		return new Result(true);
	}
}

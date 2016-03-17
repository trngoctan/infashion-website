package com.inf.controller;

import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@RequestMapping("/sanpham")
@SessionAttributes("guest")
public class ProductController
{

	private Validator validator;

	//Bind custom validator for submitted form
	public ProductController()
	{
		ValidatorFactory validatorFactory = Validation.buildDefaultValidatorFactory();
		validator = validatorFactory.getValidator();
	}
	
	@InitBinder
    public void initBinder(WebDataBinder binder) {
        
    }

	
	/**
	 * Method will be called in initial page load at GET /trangchu
	 * */
	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) 
	{
		return "proceductView";
	}
}
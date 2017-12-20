package com.claim.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.House;
import com.claim.entity.User;
import com.claim.service.HouseService;
import com.claim.service.UserService;

@Controller

public class LoginController {

	@Autowired
	UserService userService;

	@Autowired
	HouseService houseService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView displayIndex() {
		return new ModelAndView("index", "user", new User());
	}

	@RequestMapping(value = "/index", method = RequestMethod.POST)
	public ModelAndView index(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView indexDisplay(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView displaylogin() {
		return new ModelAndView("login", "user", new User());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView login(@ModelAttribute("user") User user, HttpSession session) {
		// System.out.println("Signed up user details: " + user);

		User loggedInUser = userService.getUser(user.getUsername(), user.getPassword());
		session.setAttribute("user", loggedInUser);
		String msg = "Invaild User!";

		if (loggedInUser != null) {
			msg = "Welcome!";

		}
		return new ModelAndView("UserProfile", "house", new House());
	}
	
	@RequestMapping(value = "/postHouse", method = RequestMethod.POST)
	public ModelAndView postHouse(@ModelAttribute("house") House house, Model model,HttpSession session) {
		houseService.saveHouse(house);
		session.setAttribute("house", house);
		
		return new ModelAndView("addPic","house", house);
	}

	@RequestMapping(value = "/SignIn", method = RequestMethod.GET)
	public ModelAndView displaySignIn(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		return new ModelAndView("SignIn");
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView SignIn(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("login");
	}


	@RequestMapping(value = "/Finance", method = RequestMethod.GET)
	public ModelAndView displayFinance() {
		return new ModelAndView("Finance", "user", new User());
	}

	@RequestMapping(value = "/Finance", method = RequestMethod.POST)
	public ModelAndView Finance(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("Finance");
	}

	@RequestMapping(value = "/Details", method = RequestMethod.GET)
	public ModelAndView displayDetails() {
		return new ModelAndView("Details", "user", new User());
	}

	@RequestMapping(value = "/Details", method = RequestMethod.POST)
	public ModelAndView Details(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("Details");
	}
	
	@RequestMapping(value = "/Pricing", method = RequestMethod.GET)
	public ModelAndView displayPricing() {
		return new ModelAndView("Pricing", "user", new User());
	}

	@RequestMapping(value = "/Pricing", method = RequestMethod.POST)
	public ModelAndView Pricing(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("Pricing");
	}

	@RequestMapping(value = "/Contacts", method = RequestMethod.GET)
	public ModelAndView displayContacts() {
		return new ModelAndView("Contacts", "user", new User());
	
	}
	@RequestMapping(value = "/Contacts", method = RequestMethod.POST)
	public ModelAndView Contacts(@ModelAttribute("user") User user) {
		// System.out.println("Signed up user details: " + user);
		userService.saveUser(user);
		return new ModelAndView("Contacts");
	}
	
	
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(@RequestParam("file")MultipartFile file,HttpSession session,Model model) {
	House u =(House)session.getAttribute("house");
	
	try {
	u.setPic(file.getBytes());
	} catch (IOException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	houseService.saveHouse(u);

	ArrayList<House> houseList = (ArrayList<House>) houseService.getAllHouses();
	
	model.addAttribute("houseList", houseList);
	   session.setAttribute("houseList", u);
	return "View";

	}
	
	
	
	

}

	
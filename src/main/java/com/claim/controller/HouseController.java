package com.claim.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.claim.entity.Booking;
import com.claim.entity.House;
import com.claim.entity.User;
import com.claim.service.BookingService;
import com.claim.service.HouseService;
import com.claim.service.SendMail;

@Controller
public class HouseController {
	
	
	@Autowired
	HouseService houseService;
	
	@Autowired
	BookingService bookingService;
	
	@Autowired
	SendMail sendMail;

	@RequestMapping(value = "/viewHouse", method = RequestMethod.GET)
	public ModelAndView viewAllHouses(Model model) {
		ArrayList<House> houseList = (ArrayList<House>) houseService.getAllHouses();
		
		model.addAttribute("houseList", houseList);
		return new ModelAndView("View", "houseList", houseList);
	}
	
	
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public ModelAndView bookHouse(Model model, @RequestParam("name") String houseName) {
		House houseBooked = (House)houseService.findHouse(houseName);
		Booking booking = new Booking();
		booking.setName(houseBooked.getName());
		booking.setPrice(houseBooked.getPrice());
		
		return new ModelAndView("book","booking", booking);
	}
	
	
	@RequestMapping(value = "/confirmBooking", method = RequestMethod.POST)
	public ModelAndView confirmBooking(Model model, @ModelAttribute("booking") Booking booking, HttpSession session) {
		User user = (User)session.getAttribute("user");
		booking.setUsername(user.getUsername());
		System.out.println("BOOKING DETAILS!!!! : "+booking);
		System.out.println("User details: "+user.getUsername());
		
		String msg = "Dear "+user.getUsername()+" ,Your stay at "+booking.getName()+ " has been confirmed for "+booking.getDateOfStay()+" .The price is : "+(booking.getHours()*Integer.parseInt(booking.getPrice())+" . Enjoy your stay!!");
		
		bookingService.saveBooking(booking);
		sendMail.sendMail(user.getEmail(), "The Hourly Stay - Booking Confirmation", msg);
		
		return new ModelAndView("confirm");
	}
}

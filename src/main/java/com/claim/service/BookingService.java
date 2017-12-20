package com.claim.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Booking;
import com.claim.repository.BookingRepository;

@Service
public class BookingService {

	@Autowired
	BookingRepository bookingRepository;
	
	public void saveBooking(Booking booking)
	{
		bookingRepository.save(booking);
	}
}

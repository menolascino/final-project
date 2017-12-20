package com.claim.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Booking {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "id", updatable = false, nullable = false)
	private long id;
	
	@Column
	private String name;
	
	@Column
	private String username;
	
	@Column
	private String price;
	
	@Column
	private String dateOfStay;
	
	@Column 
	private int hours;
	
	@Column 
	private int numberOfGuests;

	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDateOfStay() {
		return dateOfStay;
	}

	public void setDateOfStay(String dateOfStay) {
		this.dateOfStay = dateOfStay;
	}

	public int getHours() {
		return hours;
	}

	public void setHours(int hours) {
		this.hours = hours;
	}

	public int getNumberOfGuests() {
		return numberOfGuests;
	}

	public void setNumberOfGuests(int numberOfGuests) {
		this.numberOfGuests = numberOfGuests;
	}

	@Override
	public String toString() {
		return "Booking [id=" + id + ", name=" + name + ", price=" + price + ", dateOfStay=" + dateOfStay + ", hours="
				+ hours + ", numberOfGuests=" + numberOfGuests + "]";
	}
	
	
}

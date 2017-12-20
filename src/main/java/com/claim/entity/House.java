package com.claim.entity;

import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class House {
	@Id
	@Column
	private String name;
	@Column
	private String address;
	@Column
	private String owner;
	@Column
	private String description;
	@Column
	private String category;
	@Column
	private boolean hotel;
	
	@Column
	private String bedrooms;
	@Column
	private String size;
	@Column
	private boolean washer;
	@Column
	private boolean dryer;
	@Column
	private boolean kitchen;
	@Column
	private boolean WIFI;
	@Column
	private boolean pool;
	@Column
	private String price;
	@Column
	private String bath;
	@Column
	private byte[] pic;
	
	public byte[] getPic() {
		return pic;
	}
	public void setPic(byte[] pic) {
		this.pic = pic;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public boolean isHotel() {
		return hotel;
	}
	public void setHotel(boolean hotel) {
		this.hotel = hotel;
	}
	public String getBedrooms() {
		return bedrooms;
	}
	public void setBedrooms(String bedrooms) {
		this.bedrooms = bedrooms;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public boolean isWasher() {
		return washer;
	}
	public void setWasher(boolean washer) {
		this.washer = washer;
	}
	public boolean isDryer() {
		return dryer;
	}
	public void setDryer(boolean dryer) {
		this.dryer = dryer;
	}
	public boolean isKitchen() {
		return kitchen;
	}
	public void setKitchen(boolean kitchen) {
		this.kitchen = kitchen;
	}
	public boolean isWIFI() {
		return WIFI;
	}
	public void setWIFI(boolean wIFI) {
		WIFI = wIFI;
	}
	public boolean isPool() {
		return pool;
	}
	public void setPool(boolean pool) {
		this.pool = pool;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getBath() {
		return bath;
	}
	public void setBath(String bath) {
		this.bath = bath;
	}

	public String showPicture() {

		String encoded = "";

		if (pic != null && pic.length > 0) {

			encoded = Base64.getEncoder().encodeToString(pic);

		}

		return encoded;

	}
	
	
}

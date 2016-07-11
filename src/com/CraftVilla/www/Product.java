package com.CraftVilla.www;

public class Product {

	
	public Product()
	{
		this("Floor" ,"Stonic",10000,"51.jpg");
	}
	private String name;
	private String brand;
	private double price;
	private String imageUrl;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public Product(String name, String brand, double price, String imageUrl) {
		this.name = name;
		this.brand = brand;
		this.price = price;
		this.imageUrl = imageUrl;
	}
	@Override
	public String toString() {
		return "Product [name=" + name + ", brand=" + brand + ", price=" + price + ", imageUrl=" + imageUrl + "]";
	}
	
	
}

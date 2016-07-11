package com.CraftVillaDAO.com;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.CraftVilla.ProdutCompare.com.ProductCompare;
import com.CraftVilla.www.Product;

public class ProductsDAO {
	public static List<Product> getAllProducts() {
		List<Product> prdt= new ArrayList<Product>();
		prdt.add(new  Product());
		prdt.add(new Product("saree", "MI", 120, "13.jpg"));
		prdt.add(new Product("jewellery", "mi", 1200, "23.jpg"));
		prdt.add(new Product("carpet", "MI", 13300, "32.jpg"));
		prdt.add(new Product("sculpture", "MI", 12000, "42.jpg"));

		Collections.sort(prdt, new ProductCompare());
		
		
		return prdt;
	}
	

}

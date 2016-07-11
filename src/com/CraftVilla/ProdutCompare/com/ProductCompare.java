package com.CraftVilla.ProdutCompare.com;

import java.util.Comparator;

import com.CraftVilla.www.Product;

public class ProductCompare implements Comparator<Product> {

	@Override
	public int compare(Product x, Product y) {
		if(x.getPrice() < y.getPrice()) {
			return 1;
		}
		else if (x.getPrice() > y.getPrice()) {
			return -1;
		}
		else {
			return 0;
		}
	}

	

}

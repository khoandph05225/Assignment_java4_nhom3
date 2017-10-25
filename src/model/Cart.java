package model;

import java.util.HashMap;

public class Cart {
	private HashMap<Integer, Item>cartItems;
    public Cart() {
        cartItems = new HashMap<>();
    }

    public Cart(HashMap<Integer, Item> cartItems) {
        this.cartItems = cartItems;
    }
    public void setCartItem(HashMap<Integer, Item> cartItem) {
    	this.cartItems=cartItem;
    }
    
}

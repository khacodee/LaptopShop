/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author LENOVO
 */
public class Cart{
    private List<CartItem> listCartItem;

    public Cart() {
        listCartItem = new ArrayList<CartItem>();
    }

    public Cart(List<CartItem> listCartItem) {
        this.listCartItem = listCartItem;
    }

    public List<CartItem> getListCartItem() {
        return listCartItem;
    }

    public void setListCartItem(List<CartItem> listCartItem) {
        this.listCartItem = listCartItem;
    }
    
    public void clear() {
        listCartItem.clear();
    }
}

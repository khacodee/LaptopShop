/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package khacv.model;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;

/**
 *
 * @author LENOVO
 */
public class CartItem {
    private SanPham product;
    private int amount;

    public CartItem() {
    }

    public CartItem(SanPham product, int amount) {
        this.product = product;
        this.amount = amount;
    }

    /**
     * @return the product
     */
    public SanPham getProduct() {
        return product;
    }

    /**
     * @param product the product to set
     */
    public void setProduct(SanPham product) {
        this.product = product;
    }

    /**
     * @return the amount
     */
    public int getAmount() {
        return amount;
    }

    /**
     * @param amount the amount to set
     */
    public void setAmount(int amount) {
        this.amount = amount;
    }
    
    public String getTongTienStr() {
        BigDecimal total = BigDecimal.valueOf(product.getDongia() * amount);
        total = total.setScale(0, RoundingMode.HALF_UP);
        DecimalFormat df = new DecimalFormat("#,###");
        return df.format(total) + "₫";
    }
    
}

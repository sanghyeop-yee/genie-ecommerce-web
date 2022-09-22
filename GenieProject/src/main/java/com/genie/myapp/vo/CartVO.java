package com.genie.myapp.vo;

public class CartVO{
    private int cart_num;
    private String genie_id;
    private int product_id;
    private int cart_price;
    private int cart_qty;
    private String cart_writedate;

    public int getCart_num() {
        return this.cart_num;
    }

    public void setCart_num(int cart_num) {
        this.cart_num = cart_num;
    }

    public String getGenie_id() {
        return this.genie_id;
    }

    public void setGenie_id(String genie_id) {
        this.genie_id = genie_id;
    }

    public int getProduct_id() {
        return this.product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getCart_price() {
        return this.cart_price;
    }

    public void setCart_price(int cart_price) {
        this.cart_price = cart_price;
    }

    public int getCart_qty() {
        return this.cart_qty;
    }

    public void setCart_qty(int cart_qty) {
        this.cart_qty = cart_qty;
    }

    public String getCart_writedate() {
        return this.cart_writedate;
    }

    public void setCart_writedate(String cart_writedate) {
        this.cart_writedate = cart_writedate;
    }

}
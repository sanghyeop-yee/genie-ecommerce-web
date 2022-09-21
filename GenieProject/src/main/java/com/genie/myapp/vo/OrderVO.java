package com.genie.myapp.vo;

import java.util.Map;

public class OrderVO {
    
    private int order_num;
    private String genie_id;
    private int product_id;
    private String recipient_name;
    private String recipient_phone;
    private String recipient_address;
    private String recipient_request;
    private String recipient_delivery_status;
    private int order_price;
    private int order_qty;
    private String order_writedate;
    private String payment_mehtod;
    private String product_name;
    
    public Map<String, String> deliveryMap;
    
    @Override
	public String toString() {
		return "OrderVO [order_num=" + order_num + ", genie_id=" + genie_id + ", product_id=" + product_id
				+ ", recipient_name=" + recipient_name + ", recipient_phone=" + recipient_phone + ", recipient_address="
				+ recipient_address + ", recipient_request=" + recipient_request + ", recipient_delivery_status="
				+ recipient_delivery_status + ", order_price=" + order_price + ", order_qty=" + order_qty
				+ ", order_writedate=" + order_writedate + ", payment_mehtod=" + payment_mehtod + ", product_name="
				+ product_name + ", deliveryMap=" + deliveryMap + "]";
	}

    public int getOrder_num() {
        return order_num;
    }

    public void setOrder_num(int order_num) {
        this.order_num = order_num;
    }

    public String getGenie_id() {
        return genie_id;
    }

    public void setGenie_id(String genie_id) {
        this.genie_id = genie_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public String getRecipient_name() {
        return recipient_name;
    }

    public void setRecipient_name(String recipient_name) {
        this.recipient_name = recipient_name;
    }

    public String getRecipient_phone() {
        return recipient_phone;
    }

    public void setRecipient_phone(String recipient_phone) {
        this.recipient_phone = recipient_phone;
    }

    public String getRecipient_address() {
        return recipient_address;
    }

    public void setRecipient_address(String recipient_address) {
        this.recipient_address = recipient_address;
    }

    public String getRecipient_request() {
        return recipient_request;
    }

    public void setRecipient_request(String recipient_request) {
        this.recipient_request = recipient_request;
    }

    public String getRecipient_delivery_status() {
        return recipient_delivery_status;
    }

    public void setRecipient_delivery_status(String recipient_delivery_status) {
        this.recipient_delivery_status = recipient_delivery_status;
    }

    public int getOrder_price() {
        return order_price;
    }

    public void setOrder_price(int order_price) {
        this.order_price = order_price;
    }

    public int getOrder_qty() {
        return order_qty;
    }

    public void setOrder_qty(int order_qty) {
        this.order_qty = order_qty;
    }

    public String getOrder_writedate() {
        return order_writedate;
    }

    public void setOrder_writedate(String order_writedate) {
        this.order_writedate = order_writedate;
    }

    public String getPayment_mehtod() {
        return payment_mehtod;
    }

    public void setPayment_mehtod(String payment_mehtod) {
        this.payment_mehtod = payment_mehtod;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

	public Map<String, String> getDeliveryMap() {
		return deliveryMap;
	}

	public void setDeliveryMap(Map<String, String> deliveryMap) {
		this.deliveryMap = deliveryMap;
	}

    
    
}

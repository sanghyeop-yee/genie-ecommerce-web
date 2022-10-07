package com.genie.myapp.vo;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PaymentVO {

    private List<String> product_name;
    private List<String> product_price;
    private List<String> p_num;
    private int total;
    
}

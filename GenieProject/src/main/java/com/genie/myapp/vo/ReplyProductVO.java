package com.genie.myapp.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyProductVO {
    private String genie_id;
    private int reply_no;
    private int product_id;
    private String comment;
    private String writedate;
    //혹시 지금 잠깐 머지해도 될까요 강사님께 뭐 좀 물어봐야할 것 같아서...
}
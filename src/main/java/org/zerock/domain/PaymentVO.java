package org.zerock.domain;

import lombok.Data;

@Data
public class PaymentVO {
    private int payment_no;
    private String member_id;
    private String card_number;
    private String bank;
    private int booking_no;
}

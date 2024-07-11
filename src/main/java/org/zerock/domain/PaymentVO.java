package org.zerock.domain;

import lombok.Data;

@Data
public class PaymentVO {
    private int paymentNo;
    private String memberId;
    private String cardNumber;
    private String bank;
    private int bookingNo;
}

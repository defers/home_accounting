package com.defers.homeaccounting.entity.account.dto;

import com.defers.homeaccounting.entity.account.Account;
import com.defers.homeaccounting.entity.currency.Currency;
import com.defers.homeaccounting.entity.currency.CurrencyService;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AccountDTO {

    private String name;
    private boolean deleted;
    private LocalDateTime createdDate;
    private LocalDateTime updatedDate;

    private long id;
    public String currencyCode;
    private String commentary;
    private int sort;
    private boolean isActive;

}

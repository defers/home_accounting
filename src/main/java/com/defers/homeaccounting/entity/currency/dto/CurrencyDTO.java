package com.defers.homeaccounting.entity.currency.dto;

import com.defers.homeaccounting.entity.currency.Currency;
import lombok.Data;

@Data
public class CurrencyDTO{

    private String code;
    private boolean active;
    private String name;
    private boolean deleted;

    public static Currency convertToCurrency(CurrencyDTO currencyDTO) {
        Currency currency = new Currency();
        currency.setDeleted(currencyDTO.isDeleted());
        currency.setCode(currencyDTO.getCode());
        currency.setName(currencyDTO.getName());
        currency.setActive(currencyDTO.isActive());

        return currency;
    }
}


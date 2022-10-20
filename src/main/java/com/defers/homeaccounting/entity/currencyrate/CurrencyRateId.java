package com.defers.homeaccounting.entity.currencyrate;


import com.defers.homeaccounting.entity.currency.Currency;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;

@Embeddable
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class CurrencyRateId implements Serializable {

    @NotBlank(message = "Field <date> can not be blank!")
    @NotNull(message = "Field <date> can not be blank!")
    @Column(name = "date")
    private LocalDateTime date;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "currency_id")
    private Currency currency;

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime theDate) {
        date = theDate;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency theCurrency) {
        currency = theCurrency;
    }

}

package com.defers.homeaccounting.entity.currencyrate;


import com.defers.homeaccounting.entity.currency.Currency;
import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDate;

@Embeddable
@Builder
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class CurrencyRateId implements Serializable {

    @DateTimeFormat(pattern="yyyy-MM-dd")
    @NotBlank(message = "Field <date> can not be blank!")
    @NotNull(message = "Field <date> can not be blank!")
    @Column(name = "date")
    private LocalDate date;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "currency_id")
    private Currency currency;

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate theDate) {
        date = theDate;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency theCurrency) {
        currency = theCurrency;
    }

}

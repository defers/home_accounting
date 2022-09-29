package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.Currency;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.time.LocalDateTime;

@Entity
@Table(name = "currency_rate",
        uniqueConstraints = {@UniqueConstraint(columnNames = {"date", "currency"})})
public class CurrencyRate {

    @NotBlank(message = "Field <date> can not be blank!")
    @NotNull(message = "Field <date> can not be blank!")
    @Column(name = "date")
    private LocalDateTime date;
    @Column(name = "currency")
    private Currency currency;
    @Column(name = "rate")
    private int rate;

    public CurrencyRate(){}

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

    public int getRate() {
        return rate;
    }

    public void setRate(int theRate) {
        rate = theRate;
    }

}

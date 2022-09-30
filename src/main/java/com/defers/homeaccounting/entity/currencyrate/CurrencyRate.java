package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.Currency;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Table(name = "currency_rate",
        uniqueConstraints = {@UniqueConstraint(columnNames = {"date", "currency_id"})})
public class CurrencyRate implements Serializable {

    @NotBlank(message = "Field <date> can not be blank!")
    @NotNull(message = "Field <date> can not be blank!")
    @Id
    @Column(name = "date")
    private LocalDateTime date;

    @Id
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "currency_id")
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        CurrencyRate that = (CurrencyRate) o;
        return rate == that.rate &&
                date.equals(that.date) &&
                currency.equals(that.currency);
    }

    @Override
    public int hashCode() {
        return Objects.hash(date, currency, rate);
    }
}

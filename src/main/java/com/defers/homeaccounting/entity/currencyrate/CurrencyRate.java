package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.Currency;
import lombok.AllArgsConstructor;
import lombok.Builder;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@AllArgsConstructor
@Table(name = "currency_rate",
        uniqueConstraints = {@UniqueConstraint(columnNames = {"date", "currency_id"})})
public class CurrencyRate implements Serializable {

    private static final long serialVersionUID = 100001L;

    @EmbeddedId
    private CurrencyRateId currencyRateId;

    @Column(name = "rate")
    private float rate;

    public CurrencyRate(){}

    public float getRate() {
        return rate;
    }

    public void setRate(int theRate) {
        rate = theRate;
    }

    public CurrencyRateId getCurrencyRateId(){
        return this.currencyRateId;
    }

    public void setCurrencyRateId(CurrencyRateId currencyRateId) {
        this.currencyRateId = currencyRateId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CurrencyRate)) return false;
        CurrencyRate that = (CurrencyRate) o;
        return Float.compare(that.rate, rate) == 0 &&
                currencyRateId.equals(that.currencyRateId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(currencyRateId, rate);
    }

    public static CurrencyRateBuilder builder() {
        return new CurrencyRateBuilder();
    }

    private static class CurrencyRateBuilder {
        private LocalDateTime date;
        private Currency currency;
        private float rate;

        public CurrencyRateBuilder date(LocalDateTime date) {
            this.date = date;
            return this;
        }

        public CurrencyRateBuilder currency(Currency currency) {
            this.currency = currency;
            return this;
        }

        public CurrencyRateBuilder rate(float rate){
            this.rate = rate;
            return this;
        }

        public CurrencyRate build() {
            return new CurrencyRate(new CurrencyRateId(date, currency), rate);
        }
    }

}

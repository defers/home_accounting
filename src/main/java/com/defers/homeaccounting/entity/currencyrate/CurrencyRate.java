package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.Currency;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Objects;

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "currency_rate",
        uniqueConstraints = {@UniqueConstraint(columnNames = {"date", "currency_id"}),
                @UniqueConstraint(columnNames = {"id"})})
public class CurrencyRate implements Serializable {

    private static final long serialVersionUID = 100001L;

    @EmbeddedId
    private CurrencyRateId currencyRateId;

    @SequenceGenerator(name = "id_generator", sequenceName = "currency_rate_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    @Column(name = "id")
    private long id;

    @Column(name = "rate")
    private BigDecimal rate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public BigDecimal getRate() {
        return rate;
    }

    public void setRate(BigDecimal theRate) {
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
        return id == that.id &&
                currencyRateId.equals(that.currencyRateId) &&
                rate.equals(that.rate);
    }

    @Override
    public int hashCode() {
        return Objects.hash(currencyRateId, rate);
    }

    public static CurrencyRateBuilder builder() {
        return new CurrencyRateBuilder();
    }

    public static class CurrencyRateBuilder {
        private LocalDateTime date;
        private CurrencyRateId currencyRateId;
        private BigDecimal rate;

        public CurrencyRateBuilder currencyRateId(CurrencyRateId currencyRateId) {
            this.currencyRateId = currencyRateId;
            return this;
        }

        public CurrencyRateBuilder rate(BigDecimal rate){
            this.rate = rate;
            return this;
        }

        public CurrencyRate build() {
            return new CurrencyRate(currencyRateId, id, rate);
        }
    }

}

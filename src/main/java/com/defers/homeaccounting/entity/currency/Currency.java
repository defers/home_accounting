package com.defers.homeaccounting.entity.currency;

import com.defers.homeaccounting.entity.baseentity.EntityObject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.Objects;

@Entity
@Table(name="currency")
public class Currency extends EntityObject {

    @Column(name = "code")
    private String code;
    @Column(name = "is_active")
    private boolean isActive;

    public Currency() {
        super();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String theCode) {
        code = theCode;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Currency currency = (Currency) o;
        return isActive == currency.isActive &&
                code.equals(currency.code) &&
                getId() == currency.getId() &&
                getName() == currency.getName();
    }

    @Override
    public int hashCode() {
        return Objects.hash(code, isActive, getId(), getName());
    }
}

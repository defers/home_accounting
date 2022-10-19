package com.defers.homeaccounting.entity.currency;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name="currency")
public class Currency extends EntityObject {

    @Id
    @Column(name = "code")
    private String code;

    @Column(name = "is_active", columnDefinition = "boolean default true")
    private boolean active;

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
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Currency currency = (Currency) o;
        return active == currency.active &&
                code.equals(currency.code) &&
                getName() == currency.getName();
    }

    @Override
    public int hashCode() {
        return Objects.hash(code, active, getName());
    }
}

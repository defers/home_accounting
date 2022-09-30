package com.defers.homeaccounting.entity.payee;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "payee")
public class Payee extends EntityObject {

    @Column(name = "is_active")
    private boolean isActive;

}

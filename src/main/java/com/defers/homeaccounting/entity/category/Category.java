package com.defers.homeaccounting.entity.category;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import com.defers.homeaccounting.enums.TransactionType;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

import javax.persistence.*;

@Data
@EqualsAndHashCode(of = {"id"})
@ToString(of = {"id"})
@Table(name = "category")
@Entity
public class Category extends EntityObject {

    @JoinColumn(name = "parent_id")
    @ManyToOne
    private Category parent;

    @Column(name = "transaction_type")
    @Enumerated(value = EnumType.STRING)
    private TransactionType transactionType;

}

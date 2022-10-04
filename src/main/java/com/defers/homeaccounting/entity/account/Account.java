package com.defers.homeaccounting.entity.account;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import com.defers.homeaccounting.entity.currency.Currency;
import lombok.Data;

import javax.persistence.*;

@Data
@NamedEntityGraph(name = "Account.currency",
        attributeNodes = {@NamedAttributeNode(value = "currency")})
@Table(name = "account")
@Entity
public class Account extends EntityObject {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "id_generator", sequenceName = "account_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    private Long id;

    @JoinColumn(name = "currency_id")
    @ManyToOne(cascade = {CascadeType.DETACH, CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH}
                            , fetch = FetchType.LAZY)
    private Currency currency;

    @Column(name = "commentary")
    private String commentary;

    @Column(name = "sort")
    private int sort;

    @Column(name = "is_active")
    private boolean isActive;


}

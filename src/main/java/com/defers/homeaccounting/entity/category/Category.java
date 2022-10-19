package com.defers.homeaccounting.entity.category;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import com.defers.homeaccounting.enums.TransactionType;
import lombok.*;

import javax.persistence.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(of = {"id"})
@ToString(of = {"id"})
@Table(name = "category")
@Entity
public class Category extends EntityObject {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "id_generator", sequenceName = "category_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    private long id;

    @JoinColumn(name = "parent_id")
    @ManyToOne
    private Category parent;

    @Column(name = "transaction_type")
    @Enumerated(value = EnumType.STRING)
    private TransactionType transactionType;

    @Builder
    public Category(long id, String name, boolean deleted,
                    Category parent, TransactionType transactionType) {
        super(name, deleted);
        this.id = id;
        this.parent = parent;
        this.transactionType = transactionType;
    }

}

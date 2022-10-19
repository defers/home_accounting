package com.defers.homeaccounting.entity.payee;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "payee")
public class Payee extends EntityObject {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "id_generator", sequenceName = "payee_id_seq", allocationSize = 10)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    private Long id;

    @Column(name = "is_active")
    private boolean isActive;

    @Builder
    public Payee(Long id, boolean isActive, String name, boolean deleted) {
        super(name, deleted);

        this.id = id;
        this.isActive = isActive;
    }
}

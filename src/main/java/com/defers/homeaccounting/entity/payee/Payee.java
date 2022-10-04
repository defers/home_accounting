package com.defers.homeaccounting.entity.payee;

import com.defers.homeaccounting.entity.baseentity.EntityObject;
import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "payee")
public class Payee extends EntityObject {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "id_generator", sequenceName = "payee_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    private Long id;

    @Column(name = "is_active")
    private boolean isActive;

}

package com.defers.homeaccounting.entity.baseentity;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.*;
import javax.swing.text.html.parser.Entity;
import java.time.LocalDateTime;

@MappedSuperclass
public abstract class EntityObject {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "id_generator", sequenceName = "id_sequence", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id_generator")
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "is_deleted")
    private boolean deleted;

    @CreationTimestamp
    @Column(name = "created_date")
    private LocalDateTime createdDate;

    @UpdateTimestamp
    @Column(name = "updated_date")
    private LocalDateTime updatedDate;

    public EntityObject(){

    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String theName) {
        name = theName;
    }

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean isDeleted) {
        deleted = isDeleted;
    }

    public LocalDateTime getCreatedDate() {
        return createdDate;
    }

    public LocalDateTime getUpdatedDate() {
        return updatedDate;
    }
}

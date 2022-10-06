package com.defers.homeaccounting.entity.baseentity;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.swing.text.html.parser.Entity;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDateTime;

@MappedSuperclass
public abstract class EntityObject implements Serializable {

    @NotNull(message = "Field <name> can not be null")
    @NotBlank(message = "Field <name> can not be blank")
    @Column(name = "name")
    private String name;

    @Column(name = "is_deleted")
    private boolean deleted;

    @CreationTimestamp
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Column(name = "created_date", updatable = false)
    private LocalDateTime createdDate;

    @UpdateTimestamp
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Column(name = "updated_date")
    private LocalDateTime updatedDate;

    public EntityObject(){

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

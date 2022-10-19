package com.defers.homeaccounting.entity.category.dto;

import com.defers.homeaccounting.enums.TransactionType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public final class CategoryDTO {

    private long id;
    private TransactionType transactionType;
    private long parentId;

    private String name;
    private boolean deleted;
    private LocalDateTime createdDate;
    private LocalDateTime updatedDate;
}

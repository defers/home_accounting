package com.defers.homeaccounting.entity.payee.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public final class PayeeDTO {
    private long id;
    private boolean isActive;

    private String name;
    private boolean deleted;
    private LocalDateTime createdDate;
    private LocalDateTime updatedDate;
}

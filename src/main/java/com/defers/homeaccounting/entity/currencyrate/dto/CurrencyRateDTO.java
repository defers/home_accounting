package com.defers.homeaccounting.entity.currencyrate.dto;

import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Date;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public final class CurrencyRateDTO {

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date date;
    @NotNull
    @NotBlank(message = "Field <currencyCode> can not be blank!")
    private String currencyCode;
    private BigDecimal rate;

}

package com.defers.homeaccounting.utils;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Objects;

public class DateUtils {

    public static LocalDateTime toLocalDateTimeFrom(Date date) {
        return LocalDateTime.ofInstant(
                Objects.requireNonNull(date, "Date must not be blank!").toInstant(),
                ZoneId.systemDefault()
        );
    }

    public static LocalDate toLocalDateFrom(Date date) {
        return LocalDate.ofInstant(
                Objects.requireNonNull(date, "Date must not be blank!").toInstant(),
                ZoneId.systemDefault()
        );
    }
}

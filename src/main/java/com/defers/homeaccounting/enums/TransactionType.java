package com.defers.homeaccounting.enums;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public enum TransactionType {
    INCOME, EXPENSE;

    public static List<String> valuesAsList() {
     return Arrays.asList(values())
             .stream()
             .map(String::valueOf)
             .collect(Collectors.toList());
    }
}

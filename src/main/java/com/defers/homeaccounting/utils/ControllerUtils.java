package com.defers.homeaccounting.utils;

import java.util.LinkedHashMap;
import java.util.Map;

public class ControllerUtils {
    public static Map<Integer, String> getPathPages(String pathPage, int totalPages) {
        Map<Integer, String> pathPages = new LinkedHashMap<>();
        String fullPathPage = "";

        for (int i=0; i<totalPages; i++) {
            fullPathPage = String.format(pathPage, i);
            pathPages.put(i, fullPathPage);
        }
        return pathPages;
    }
}

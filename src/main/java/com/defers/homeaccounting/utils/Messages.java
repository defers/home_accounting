package com.defers.homeaccounting.utils;

public class Messages {

    public static String getFormattedMessage(String message, Object... args) {
        String msg = String.format(message, args);
        return msg;
    }
}

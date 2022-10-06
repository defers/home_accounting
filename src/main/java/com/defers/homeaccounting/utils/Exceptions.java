package com.defers.homeaccounting.utils;

import java.lang.reflect.InvocationTargetException;

public class Exceptions {

    public static <T extends Exception> void throwException(Class<T> ex,
                                                            String msg,
                                                            Object... args) throws T {
        String msgException = Messages.getFormattedMessage(msg, args);
        T newEx = newInstanceException(ex, msgException);
        throw newEx;
    }

    private static <T extends Exception> T newInstanceException(Class<T> ex, String msgException) {

        T newEx = null;

        try {
            newEx = ex.getConstructor().newInstance(msgException);
        }catch (NoSuchMethodException |
                IllegalAccessException |
                InvocationTargetException |
                InstantiationException e) {
            e.printStackTrace();
        }
        return newEx;
    }

}

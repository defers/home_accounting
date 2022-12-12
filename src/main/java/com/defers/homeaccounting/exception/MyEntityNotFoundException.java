package com.defers.homeaccounting.exception;

public class MyEntityNotFoundException extends RuntimeException {
    public MyEntityNotFoundException(String message) {
        super(message);
    }
}

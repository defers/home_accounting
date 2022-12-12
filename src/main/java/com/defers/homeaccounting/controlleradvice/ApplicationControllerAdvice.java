package com.defers.homeaccounting.controlleradvice;

import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;


@ControllerAdvice
public class ApplicationControllerAdvice {

    @ExceptionHandler({MyEntityNotFoundException.class})
    public String handleMyEntityNotFoundException(RuntimeException e) {
        return "redirect:/";
    }
}

package com.defers.homeaccounting;

import com.defers.homeaccounting.entity.currency.CurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.ConfigurableApplicationContext;


@SpringBootApplication
public class HomeaccountingApplication {

    @Autowired
    public static CurrencyService currencyService;

    public static void main(String[] args) {

        ConfigurableApplicationContext context = SpringApplication.run(HomeaccountingApplication.class, args);


//        CurrencyService currencyService1 = context.getBean("currencyService", CurrencyService.class);
//        List<Currency> currencys = currencyService1.findAll();
//        currencys.stream()
//                .forEach(System.out::println);

    }

}

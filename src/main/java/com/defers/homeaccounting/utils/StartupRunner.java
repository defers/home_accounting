package com.defers.homeaccounting.utils;

import com.defers.homeaccounting.entity.currency.Currency;
import com.defers.homeaccounting.entity.currency.CurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

@Component
public class StartupRunner implements CommandLineRunner {

    @Autowired
    CurrencyService currencyService;

    @Override
    public void run(String... args) throws Exception {

//        Currency currency = currencyService.findByCode("RUB");
//
//        if (currency == null) {
//            currency = new Currency();
//            currency.setActive(true);
//            currency.setName("Рубли");
//            currency.setCode("RUB");
//
//            currencyService.save(currency);
//        }
//
//        currency = currencyService.findByCode("USD");
//
//        if (currency == null) {
//            currency = new Currency();
//            currency.setActive(true);
//            currency.setName("USD доллары");
//            currency.setCode("USD");
//
//            currencyService.save(currency);
//        }

    }
}

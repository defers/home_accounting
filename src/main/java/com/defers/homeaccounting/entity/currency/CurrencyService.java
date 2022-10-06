package com.defers.homeaccounting.entity.currency;

import com.defers.homeaccounting.utils.Exceptions;
import net.bytebuddy.implementation.bytecode.Throw;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@Service
public class CurrencyService {

    @Autowired
    CurrencyRepo currencyRepo;

    @Transactional
    public List<Currency> findAll() {
        List<Currency> currencys = currencyRepo.findAll();

        return currencys;
    }

    @Transactional
    public Currency save(Currency currency) {
        return currencyRepo.save(currency);
    }

    @Transactional
    public Currency findByCode(String code) {
        Currency currency = currencyRepo.findByCode(code);

        if (currency == null) {
            Exceptions.throwException(EntityNotFoundException.class, "Currency with code: %s not found",  code);
        }

        return currency;
    }

    @Transactional
    public void delete(Currency currency) {
        currencyRepo.delete(currency);
    }

    @Transactional
    public void delete(String code) throws EntityNotFoundException {
        Currency currency = findByCode(code);
        if (currency != null) {
            currency.setDeleted(!currency.isDeleted());
        }
        else {
            Exceptions.throwException(EntityNotFoundException.class, "Currency with code: %s not found",  code);
        }
    }
}

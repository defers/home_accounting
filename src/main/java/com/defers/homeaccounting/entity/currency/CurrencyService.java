package com.defers.homeaccounting.entity.currency;

import net.bytebuddy.implementation.bytecode.Throw;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
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
    public void save(Currency currency) {
        currencyRepo.save(currency);
    }

    @Transactional
    public Currency findByCode(String code) {
        Currency currency = currencyRepo.findByCode(code);
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
            throw new EntityNotFoundException(
                    String.format("Currency with code: %s not found", code));
        }
    }

}

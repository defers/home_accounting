package com.defers.homeaccounting.entity.currency;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CurrencyRepo extends JpaRepository<Currency, Long> {
    Currency findByCode(String code);
}

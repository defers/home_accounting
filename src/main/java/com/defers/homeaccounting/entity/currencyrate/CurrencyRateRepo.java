package com.defers.homeaccounting.entity.currencyrate;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CurrencyRateRepo extends JpaRepository<CurrencyRate, CurrencyRateId> {
}

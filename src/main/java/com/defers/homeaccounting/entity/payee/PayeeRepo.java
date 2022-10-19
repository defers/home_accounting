package com.defers.homeaccounting.entity.payee;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PayeeRepo extends JpaRepository<Payee, Long> {
}

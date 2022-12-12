package com.defers.homeaccounting.entity.currencyrate;

import com.defers.homeaccounting.entity.currency.Currency;
import com.defers.homeaccounting.entity.currency.CurrencyService;
import com.defers.homeaccounting.entity.currencyrate.dto.CurrencyRateDTO;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.DateUtils;
import com.defers.homeaccounting.utils.Exceptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.time.LocalDate;
import java.time.ZoneOffset;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class CurrencyRateService {

    private CurrencyRateRepo currencyRateRepo;
    private CurrencyService currencyService;

    @Autowired
    public CurrencyRateService(CurrencyRateRepo currencyRateRepo,
                               CurrencyService currencyService) {
        this.currencyRateRepo = currencyRateRepo;
        this.currencyService = currencyService;
    }

    @Transactional
    public List<CurrencyRate> findAll() {
        return currencyRateRepo.findAll();
    }

    @Transactional
    public Page<CurrencyRate> findAllByPage(int page, int size) {
        Pageable pageable = PageRequest.of(page, size,
                Sort.by(Sort.Direction.ASC, "currencyRateId.date", "currencyRateId.currency"));
        Page<CurrencyRate> currencyRates = currencyRateRepo.findAll(pageable);

        return currencyRates;
    }

    @Transactional
    public CurrencyRate save(CurrencyRate entity) {
        return currencyRateRepo.save(entity);
    }

    public CurrencyRate saveDTO(CurrencyRateDTO dto) {

        var tempEntity = convertToCurrencyRate(dto);
        var entity = save(tempEntity);
        return entity;
    }

    @Transactional
    public void delete(CurrencyRate entity) {
        currencyRateRepo.delete(entity);
    }

    @Transactional
    public CurrencyRate findByCurrencyRateId(CurrencyRateId id) {

        CurrencyRate entity = null;
        Optional<CurrencyRate> currencyRateOpt = currencyRateRepo.findById(id);

        if (currencyRateOpt.isPresent()) {
            entity = currencyRateOpt.get();
        }
        else {
            Exceptions.throwException(MyEntityNotFoundException.class,
                    "Currency rate with id: %s not found",  id);
        }
        return entity;
    }

    public CurrencyRateDTO findDTOByCodeDate(String code, LocalDate date) {

        var currencyRateId = getCurrencyRateId(code, date);

        return convertToDTO(findByCurrencyRateId(currencyRateId));
    }

    public CurrencyRate convertToCurrencyRate(CurrencyRateDTO dto) {

        Currency currency = null;
        String currencyCode = dto.getCurrencyCode();
        if (currencyCode != "") {
            currency = currencyService.findByCode(currencyCode);
        }

        CurrencyRate currencyRate = CurrencyRate.builder()
                .currencyRateId(new CurrencyRateId(DateUtils.toLocalDateFrom(dto.getDate()), currency))
                .rate(dto.getRate())
                .build();
        return currencyRate;
    }

    public CurrencyRateDTO convertToDTO(CurrencyRate entity) {
        CurrencyRateDTO dto = CurrencyRateDTO.builder()
                .currencyCode(entity.getCurrencyRateId().getCurrency().getCode())
                .date(Date.from(entity.getCurrencyRateId().getDate().atStartOfDay().toInstant(ZoneOffset.UTC)))
                .rate(entity.getRate())
                .build();
        return dto;
    }

    public CurrencyRateId getCurrencyRateId(String code, LocalDate date) {
        return CurrencyRateId.builder()
                .currency(currencyService.findByCode(code))
                .date(date)
                .build();
    }

    @Transactional
    public void deleteByCurrencyRateByCodeDate(String code, LocalDate date) {
        CurrencyRateId currencyRateId = getCurrencyRateId(code, date);
        currencyRateRepo.deleteById(currencyRateId);
    }
}

package com.defers.homeaccounting.entity.account;

import com.defers.homeaccounting.entity.account.dto.AccountDTO;
import com.defers.homeaccounting.entity.baseentity.IEntityService;
import com.defers.homeaccounting.entity.currency.CurrencyService;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.Exceptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class AccountService implements IEntityService<Account> {

    AccountRepo accountRepo;
    CurrencyService currencyService;

    @Autowired
    public AccountService(AccountRepo accountRepo, CurrencyService currencyService) {
        this.accountRepo = accountRepo;
        this.currencyService = currencyService;
    }

    @Transactional
    @Override
    public List<Account> findAll() {
        return accountRepo.findAll();
    }

    @Transactional
    public List<AccountDTO> findAllDTO() {

        List<Account> accList = findAll();

        return accList.stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Transactional
    public Optional<Page<Account>> findAllWithPages(int countOnPage) throws InterruptedException {
        Pageable pages = PageRequest.of(0, countOnPage);
        Optional<Page<Account>> accPages = Optional.ofNullable(accountRepo.findAll(pages));
        return accPages;
    }

    @Transactional
    @Override
    public Account save(Account acc) {
        return accountRepo.save(acc);
    }

    @Transactional
    public Account saveDTO(AccountDTO accDTO) {

        var accTemp = convertToAccount(accDTO);
        var acc = save(accTemp);
        return acc;
    }

    @Transactional
    @Override
    public void delete(Account acc) {
        accountRepo.delete(acc);
    }

    @Transactional
    @Override
    public void setDelete(Long id) {
        Account acc = findById(id);
        if (acc != null) {
            acc.setDeleted(!acc.isDeleted());
        }
    }

    @Transactional
    public Account findById(Long id) throws MyEntityNotFoundException {

        Account acc = null;

        Optional<Account> accOptional = accountRepo.findById(id);
        if (accOptional.isPresent()) {
            acc = accOptional.get();
        } else {
            Exceptions.throwException(MyEntityNotFoundException.class, "%s with id: %s not found",
                    Account.class.getName(), id);
        }
        return acc;
    }

    @Transactional
    public AccountDTO findDTOById(Long id) {
        Account acc = findById(id);
        AccountDTO accDTO = convertToDTO(acc);

        return accDTO;
    }

    public Account convertToAccount(AccountDTO accountDTO) {
        var account = Account.builder()
                .id(accountDTO.getId())
                .currency(currencyService.findByCode(accountDTO.getCurrencyCode()))
                .commentary(accountDTO.getCommentary())
                .sort(accountDTO.getSort())
                .isActive(accountDTO.isActive())
                .name(accountDTO.getName())
                .deleted(accountDTO.isDeleted())
                .build();

        return account;
    }

    public AccountDTO convertToDTO(Account account) {

        var accountDTO = AccountDTO.builder()
                .name(account.getName())
                .deleted(account.isDeleted())
                .createdDate(account.getCreatedDate())
                .updatedDate(account.getUpdatedDate())
                .id(account.getId())
                .currencyCode(account.getCurrency().getCode())
                .commentary(account.getCommentary())
                .sort(account.getSort())
                .isActive(account.isActive())
                .build();

        return accountDTO;
    }
}

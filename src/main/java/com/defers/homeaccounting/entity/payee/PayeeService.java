package com.defers.homeaccounting.entity.payee;

import com.defers.homeaccounting.entity.baseentity.IEntityService;
import com.defers.homeaccounting.entity.payee.dto.PayeeDTO;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.Exceptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class PayeeService implements IEntityService<Payee> {
    private PayeeRepo payeeRepo;

    @Autowired
    public PayeeService(PayeeRepo payeeRepo) {
        this.payeeRepo = payeeRepo;
    }

    @Transactional
    @Override
    public List<Payee> findAll() {
        return payeeRepo.findAll();
    }

    @Transactional
    public Page<Payee> findAllByPage(int page, int size) {
        Pageable pageable = PageRequest.of(page, size,
                Sort.by(Sort.Direction.ASC, "id"));
        Page<Payee> categorys = payeeRepo.findAll(pageable);

        return categorys;
    }

    @Transactional
    @Override
    public Payee save(Payee entity) {
        return payeeRepo.save(entity);
    }

    @Transactional
    public Payee saveDTO(PayeeDTO dto) {
        var tempEntity = convertToCategory(dto);
        var entity = save(tempEntity);
        return entity;
    }

    @Transactional
    @Override
    public void delete(Payee entity) {
        payeeRepo.delete(entity);
    }

    @Transactional
    @Override
    public void setDelete(Long id) {
        Payee entity = findById(id);
        entity.setDeleted(!entity.isDeleted());
    }

    @Transactional
    public Payee findById(Long id) {

        Payee entity = null;
        Optional<Payee> categoryOpt = payeeRepo.findById(id);

        if (categoryOpt.isPresent()) {
            entity = categoryOpt.get();
        }
        else {
            Exceptions.throwException(MyEntityNotFoundException.class,
                    "Payee with id: %s not found",  id);
        }
        return entity;
    }

    public PayeeDTO findDTOById(Long id) {
        return convertToDTO(findById(id));
    }

    public Payee convertToCategory(PayeeDTO dto) {
        Payee category = Payee.builder()
                .id(dto.getId())
                .name(dto.getName())
                .deleted(dto.isDeleted())
                .isActive(dto.isActive())
                .build();
        return category;
    }

    public PayeeDTO convertToDTO(Payee entity) {
        PayeeDTO dto = PayeeDTO.builder()
                .id(entity.getId())
                .createdDate(entity.getCreatedDate())
                .deleted(entity.isDeleted())
                .name(entity.getName())
                .isActive(entity.isActive())
                .updatedDate(entity.getUpdatedDate())
                .build();
        return dto;
    }

    public Map<String, String> findAllMapValues() {
        return findAll().stream()
                .map(Payee.class::cast)
                .collect(Collectors.toMap(k -> String.valueOf(k.getId()), v -> v.getName()));
    }

}

package com.defers.homeaccounting.entity.category;

import com.defers.homeaccounting.entity.baseentity.IEntityService;
import com.defers.homeaccounting.entity.category.dto.CategoryDTO;
import com.defers.homeaccounting.exception.MyEntityNotFoundException;
import com.defers.homeaccounting.utils.Exceptions;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

@Service
public class CategoryService implements IEntityService<Category> {

    private final CategoryRepo categoryRepo;
    private final CacheManager cacheManager;

    public CategoryService(CategoryRepo categoryRepo, CacheManager cacheManager) {
        this.categoryRepo = categoryRepo;
        this.cacheManager = cacheManager;
    }

    @Transactional
    @Override
    public List<Category> findAll() {
        return categoryRepo.findAll();
    }

    @Transactional
    public Page<Category> findAllByPage(int page, int size) throws InterruptedException {
        Pageable pageable = PageRequest.of(page, size,
                Sort.by(Sort.Direction.ASC, "id"));
        Page<Category> categorys = categoryRepo.findAll(pageable);

        return categorys;
    }

    @Transactional
    @Override
    public Category save(Category entity) {
        return categoryRepo.save(entity);
    }

    @CacheEvict(value = "category", allEntries = true)
    @Transactional
    public Category saveDTO(CategoryDTO dto) {

        var tempEntity = convertToCategory(dto);
        var entity = save(tempEntity);
        return entity;
    }

    @CacheEvict(value = "category", allEntries = true)
    @Transactional
    @Override
    public void delete(Category entity) {
        categoryRepo.delete(entity);
    }

    @CacheEvict(value = "category", allEntries = true)
    @Transactional
    @Override
    public void setDelete(Long id) {
        Category entity = findById(id);
        entity.setDeleted(!entity.isDeleted());
    }

    @Transactional
    public Category findById(Long id) {

        try {
            TimeUnit.SECONDS.sleep(2);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Category entity = null;
        Optional<Category> categoryOpt = categoryRepo.findById(id);

        if (categoryOpt.isPresent()) {
            entity = categoryOpt.get();
        }
        else {
            Exceptions.throwException(MyEntityNotFoundException.class,
                    "Category with id: %s not found",  id);
        }
        return entity;
    }

    @Cacheable(value = "category", key = "#id")
    public CategoryDTO findDTOById(Long id) {
        return convertToDTO(findById(id));
    }

    public Category convertToCategory(CategoryDTO dto) {

        Category parent = null;
        long parentId = dto.getParentId();
        if (parentId != 0) {
            parent = findById(dto.getParentId());
        }

        Category category = Category.builder()
                .id(dto.getId())
                .name(dto.getName())
                .transactionType(dto.getTransactionType())
                .parent(parent)
                .build();
        return category;
    }

    public CategoryDTO convertToDTO(Category entity) {
        CategoryDTO dto = CategoryDTO.builder()
                .id(entity.getId())
                .createdDate(entity.getCreatedDate())
                .deleted(entity.isDeleted())
                .name(entity.getName())
                .parentId(Objects.nonNull(entity.getParent())?entity.getParent().getId():0)
                .transactionType(entity.getTransactionType())
                .updatedDate(entity.getUpdatedDate())
                .build();
        return dto;
    }

    public Map<String, String> findAllMapValues() {
        return findAll().stream()
                .map(Category.class::cast)
                .collect(Collectors.toMap(k -> String.valueOf(k.getId()), v -> v.getName()));
    }

}

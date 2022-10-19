package com.defers.homeaccounting.entity.baseentity;

import com.defers.homeaccounting.entity.account.Account;

import java.util.List;

public interface IEntityService<T extends EntityObject> {

    List<T> findAll();
    T save(T entity);
    void delete(T entity);
    void setDelete(Long id);

}

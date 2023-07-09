package com.via.Goveg.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.via.Goveg.model.ItemBean;

public interface ItemRepository extends JpaRepository<ItemBean, Integer> {

}

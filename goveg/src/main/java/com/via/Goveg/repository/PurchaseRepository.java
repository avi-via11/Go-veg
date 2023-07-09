package com.via.Goveg.repository;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.via.Goveg.model.PurchaseBean;

public interface PurchaseRepository extends JpaRepository<PurchaseBean, Integer> {
	// @Query("SELECT i FROM PurchaseBean i WHERE i.date BETWEEN :fromDate AND :toDate")
	@Query("SELECT p FROM PurchaseBean p WHERE p.itemDate BETWEEN :fromDate AND :toDate")
	List<PurchaseBean> findItemsByDateRange(@Param("fromDate") Date fromDate, @Param("toDate") Date toDate);
	
	List<PurchaseBean> findByRegId(int regId);

}

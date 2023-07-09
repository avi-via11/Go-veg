package com.via.Goveg.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.via.Goveg.model.LoginBean;
import com.via.Goveg.model.RegisterBean;

@Repository
public interface LoginRepository extends JpaRepository<LoginBean, Integer>{

	 @Query("SELECT logrole FROM LoginBean WHERE logname = ?1 AND logpass = ?2")
	 String getUserRole(@Param("user") String logname, @Param("pass") String logpass);

	
	
	     
	 }
	   



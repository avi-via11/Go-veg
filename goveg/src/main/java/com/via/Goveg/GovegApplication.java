package com.via.Goveg;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;
@EnableTransactionManagement
@SpringBootApplication
public class GovegApplication {

	public static void main(String[] args) {
		SpringApplication.run(GovegApplication.class, args);
	}

}

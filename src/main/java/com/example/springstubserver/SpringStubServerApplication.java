package com.example.springstubserver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.contract.wiremock.AutoConfigureWireMock;

@SpringBootApplication
@AutoConfigureWireMock()
public class SpringStubServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringStubServerApplication.class, args);
	}

}

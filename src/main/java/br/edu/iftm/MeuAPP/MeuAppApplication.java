package br.edu.iftm.MeuAPP;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class }) 
public class MeuAppApplication {

	public static void main(String[] args) {
		SpringApplication.run(MeuAppApplication.class, args);
		System.out.println("Testess");
	}

}

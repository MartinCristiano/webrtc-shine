package com.shine.frontend;

import com.shine.frontend.batch.BatchService;
import org.springframework.batch.core.JobExecution;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@EnableZuulProxy
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}

	@Bean
	JobExecution jobLaunch(BatchService batchService){
		return  batchService.clean();
	}

	@Bean
	public PipeLaunch pipeLaunch() {

		return new PipeLaunch();
	}
}
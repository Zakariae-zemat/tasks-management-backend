package com.tasks.taskmangement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(
    exclude = {
        org.springframework.boot.actuate.autoconfigure.metrics.SystemMetricsAutoConfiguration.class
    }
)
public class TaskmangementApplication {

	public static void main(String[] args) {
		SpringApplication.run(TaskmangementApplication.class, args);
	}

}

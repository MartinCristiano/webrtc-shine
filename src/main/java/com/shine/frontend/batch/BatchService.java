package com.shine.frontend.batch;

import org.springframework.batch.core.JobExecution;

public interface BatchService {
    JobExecution clean();
}

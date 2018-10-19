package com.shine.frontend.repository;

import com.shine.frontend.model.StreamSession;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Optional;

@RepositoryRestResource(collectionResourceRel = "session", path = "session")
public interface StreamSessionRepository extends PagingAndSortingRepository<StreamSession, Long> {

    Optional<StreamSession> findById(@Param("id") Long id);


}

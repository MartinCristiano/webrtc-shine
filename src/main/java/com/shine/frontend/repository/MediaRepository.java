package com.shine.frontend.repository;

import com.shine.frontend.model.Media;
import com.shine.frontend.model.StreamingType;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.Optional;
import java.util.Set;

@RepositoryRestResource(collectionResourceRel = "media", path = "media")
public interface MediaRepository extends PagingAndSortingRepository<Media, Long> {

    Optional<Media> findById(@Param("id") Long id);
    Optional<Media> findByName(@Param("name") String name);
    Optional<Set<Media>> findByStreamingType(@Param("streaming_type") StreamingType streamingType);


}

package com.shine.frontend.model;

import javax.persistence.*;

@Entity
public class Media {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private long duration;

    @Column(unique=true)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(length = 8)
    private StreamingType streamingType;

    public StreamingType getStreamingType() {
        return streamingType;
    }

    public void setStreamingType(StreamingType streamingType) {
        this.streamingType = streamingType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getId() {
        return id;

    }

    public void setId(long id) {
        this.id = id;
    }

    public long getDuration() {
        return duration;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }


}

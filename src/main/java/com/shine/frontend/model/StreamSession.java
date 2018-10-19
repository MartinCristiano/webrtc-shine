package com.shine.frontend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StreamSession {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private long streamId;
	private int videoPort;
	private int AudioPort;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getVideoPort() {
		return videoPort;
	}

	public void setVideoPort(int videoPort) {
		this.videoPort = videoPort;
	}

	public long getStreamId() {
		return streamId;
	}

	public void setStreamId(long streamId) {
		this.streamId = streamId;
	}

	public int getAudioPort() {
		return AudioPort;
	}

	public void setAudioPort(int audioPort) {
		AudioPort = audioPort;
	}
}

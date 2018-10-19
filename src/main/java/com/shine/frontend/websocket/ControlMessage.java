package com.shine.frontend.websocket;

import org.springframework.lang.Nullable;

public class ControlMessage {

    private String command;

    @Nullable Long streamId;

    @Nullable
    private String seek;

    @Nullable
    private String videoPort;

    @Nullable
    private String audioPort;

    @Nullable
    private String fileSource;

    @Nullable
    public String getFileSource() {
        return fileSource;
    }

    public void setFileSource(@Nullable String fileSource) {
        this.fileSource = fileSource;
    }

    public String getSeek() {
        return seek;
    }

    public String getVideoPort() {
        return videoPort;
    }

    public void setVideoPort(String videoPort) {
        this.videoPort = videoPort;
    }

    public String getAudioPort() {
        return audioPort;
    }

    public ControlMessage(String command, @Nullable String seek, @Nullable String videoPort, @Nullable String audioPort, @Nullable String fileSource) {
        this.command = command;
        this.seek = seek;
        this.videoPort = videoPort;
        this.audioPort = audioPort;
        this.fileSource = fileSource;
    }

    public void setAudioPort(String audioPort) {
        this.audioPort = audioPort;
    }

    public ControlMessage() {
    }

    public ControlMessage(String command, String seek) {
        this.command = command;
        this.seek = seek;
    }

    public ControlMessage(String command, @Nullable String videoPort, @Nullable String audioPort, @Nullable String fileSource) {
        this.command = command;
        this.videoPort = videoPort;
        this.audioPort = audioPort;
        this.fileSource = fileSource;
    }

    public String getCommand() {
        return command;
    }

    public String   getSeekValue() {
        return seek;
    }

    public void setSeek(String seek) {
        this.seek = seek;
    }

    public void setCommand(String command) {
        this.command = command;
    }

    public ControlMessage(String command, @Nullable Long streamId, @Nullable String videoPort, @Nullable String audioPort, @Nullable String fileSource) {
        this.command = command;
        this.streamId = streamId;
        this.videoPort = videoPort;
        this.audioPort = audioPort;
        this.fileSource = fileSource;
    }

    public ControlMessage(String command, @Nullable Long streamId) {
        this.command = command;
        this.streamId = streamId;
    }

    @Nullable
    public Long getStreamId() {
        return streamId;
    }

    public void setStreamId(@Nullable Long streamId) {
        this.streamId = streamId;
    }
}

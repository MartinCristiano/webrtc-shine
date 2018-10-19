package com.shine.frontend.websocket;

public class Command {

    private String content;
    private String directive;
    private Long streamId;
    private Long duration;
    private Boolean init;

    public Command() {
    }
    public Command(String content, Long duration) {
        this.content = content;
        this.duration = duration;

    }
    public Command(String content, String directive, Boolean init) {
        this.content = content;
        this.init = init;
        this.directive=directive;
    }

    public Command(String content, String directive, Long streamId, Boolean init) {
        this.content = content;
        this.directive = directive;
        this.streamId = streamId;
        this.init = init;
    }

    public Boolean getInit() {
        return init;
    }

    public Long getStreamId() {
        return streamId;
    }

    public void setStreamId(Long streamId) {
        this.streamId = streamId;
    }
    public String getDirective() {
        return directive;
    }

    public void setDirective(String directive) {
        this.directive = directive;
    }

    public void setInit(Boolean init) {

        this.init = init;
    }

    public Command(String content) {
        this.content = content;
    }

    public Command(Long duration) {
        this.duration = duration;
    }

    public String getCommand() {
        return directive;
    }

    public void setCommand(String directive) {
        this.directive = directive;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getDuration() {
        return duration;
    }

    public void setDuration(Long duration) {
        this.duration = duration;
    }
}

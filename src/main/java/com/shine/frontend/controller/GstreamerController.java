package com.shine.frontend.controller;


import com.shine.frontend.websocket.Command;
import com.shine.frontend.websocket.ControlMessage;
import com.shine.frontend.websocket.MessageSendService;
import com.shine.frontend.PipeLaunch;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.util.HtmlUtils;

@Controller
public class GstreamerController {
    @Autowired
    private PipeLaunch pipeLaunch;

    private final MessageSendService messageSendService;

    @Autowired
    public GstreamerController(MessageSendService messageSendService) {
        this.messageSendService = messageSendService;
    }


    @CrossOrigin
    @MessageMapping("/command")
    @SendTo("/topic/gstreamer-control")
    public Command cmdController(ControlMessage message) {
        String command = message.getCommand();
        switch (command) {
            case "start":
                pipeLaunch.playPipe(message.getStreamId());
                break;
            case "pause":
                pipeLaunch.pausePipe(message.getStreamId());
                break;
            case "duration":
                Long dur = pipeLaunch.getDuration();
                return new Command(dur);
            case "seek":
                String seekVal = message.getSeek();
                pipeLaunch.seekPipe(seekVal, message.getStreamId());
                break;
            case "stop":
                break;
            case "init":
                pipeLaunch.launchPipe(message.getVideoPort(), message.getAudioPort(), message.getFileSource(), message.getStreamId(), this.messageSendService);
                return new Command("Your Command, " + HtmlUtils.htmlEscape(message.getCommand()) + "!", "init", true);
//                break;
        }
        return new Command("Your Command, " + HtmlUtils.htmlEscape(message.getCommand()) + "!");
    }

}

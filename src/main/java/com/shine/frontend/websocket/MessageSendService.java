package com.shine.frontend.websocket;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@Service
public class MessageSendService {
    private SimpMessagingTemplate template;

        @Autowired
        public MessageSendService(SimpMessagingTemplate template) {
            this.template = template;
        }



    public void sendMessage(Command message) {
            this.template.convertAndSend("/topic/gstreamer-control", message);
        }

    }


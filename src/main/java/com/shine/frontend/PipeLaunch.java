package com.shine.frontend;

import com.shine.frontend.websocket.Command;
import com.shine.frontend.websocket.MessageSendService;
import org.freedesktop.gstreamer.*;
import org.freedesktop.gstreamer.lowlevel.MainLoop;
import org.springframework.web.util.HtmlUtils;

import java.util.HashMap;
import java.util.concurrent.TimeUnit;

public class PipeLaunch {
 private HashMap<Long, Pipeline> pipe;
 private HashMap<Long,MainLoop> loop ;
 private Long sessionStream;

    public PipeLaunch( ) {
        this.pipe= new HashMap<>();
        this.loop=new HashMap<>();
        Gst.init();


    }

    public  void launchPipe(String videoPort, String audioPort, String fileSource, Long streamId, MessageSendService messageSendService ) {

       sessionStream=streamId;


// gst-launch-1.0 filesrc location=video.webm !  matroskademux ! queue ! rtpvp8pay ! udpsink host=127.0.0.1 port=5006  filesrc location=audio.opus ! oggdemux ! queue ! rtpopuspay ! udpsink host=127.0.0.1 port=5008
        Element videosrc = ElementFactory.make("filesrc", "videosrc");
        videosrc.set("location", fileSource);
        Element demux = ElementFactory.make("matroskademux", "demux");
        Element queue = ElementFactory.make("queue", "queue");
        Element queue1 = ElementFactory.make("queue", "queue1");

        Element videoPayloader = ElementFactory.make("rtpvp8pay", "payloader");
        Element videosink = ElementFactory.make("udpsink", "videosink");
        Element audiosink = ElementFactory.make("udpsink", "audiosink");
        Element audiosrc = ElementFactory.make("filesrc", "audiosrc");
        audiosrc.set("location", fileSource);
        Element audiodemux = ElementFactory.make("matroskademux", "ademux");
        Element audioPayloader = ElementFactory.make("rtpopuspay", "audioPayloader");
        // We connect to EOS and ERROR on the bus for cleanup and error messages.
        this.pipe.put(streamId, new Pipeline());

        this.loop.put(streamId, new MainLoop());
        Bus bus = this.pipe.get(streamId).getBus();
        bus.connect(new Bus.EOS() {

            @Override
            public void endOfStream(GstObject source) {
                System.out.println("Reached end of stream");
                loop.get(streamId).quit();
                Command message = new Command("Your Command, " + HtmlUtils.htmlEscape("stop") + "!", "stop",sessionStream,false);
                messageSendService.sendMessage(message);
            }

        });

        bus.connect(new Bus.ERROR() {

            @Override
            public void errorMessage(GstObject source, int code, String message) {
                System.out.println("Error detected");
                System.out.println("Error source: " + source.getName());
                System.out.println("Error code: " + code);
                System.out.println("Message: " + message);
                loop.get(streamId).quit();
            }
        });


        videosink.set("host", "172.17.0.1");
        videosink.set("port", videoPort);
        videosink.set("sync", "true");
        audiosink.set("host", "172.17.0.1");
        audiosink.set("port", audioPort);
        audiosink.set("sync", "true");
        pipe.get(streamId).addMany(videosrc, demux, queue, videoPayloader, videosink, audiosrc, audiodemux,queue1, audioPayloader, audiosink);
        videosrc.link(demux);
        demux.link(queue);
        queue.link(videoPayloader);
        videoPayloader.link(videosink);
        audiosrc.link(audiodemux);
        audiodemux.link(queue1);
        queue1.link(audioPayloader);
        audioPayloader.link(audiosink);




        demux.connect(new Element.PAD_ADDED() {

            @Override
            public void padAdded(Element element, Pad pad) {
                System.out.println("Dynamic pad created, linking  video demux");
                System.out.println("Pad name: " + pad.getName());
                System.out.println("Pad type: " + pad.getTypeName());
                Pad sinkPad = queue.getStaticPad("sink");
                try {
                    pad.link(sinkPad);
                    System.out.println("Pad linked.");
                } catch (PadLinkException ex) {
                    System.out.println("Pad link failed : " + ex.getLinkResult());
                }
            }

        });
        audiodemux.connect(new Element.PAD_ADDED() {

            @Override
            public void padAdded(Element element, Pad pad) {
                System.out.println("Dynamic pad created, linking audio demux");
                System.out.println("Pad name: " + pad.getName());
                System.out.println("Pad type: " + pad.getTypeName());
                Pad sinkPad = queue1.getStaticPad("sink");
                try {
                    pad.link(sinkPad);
                    System.out.println("Pad linked.");
                } catch (PadLinkException ex) {
                    System.out.println("Pad link failed : " + ex.getLinkResult());
                }
            }

        });

    }
public  void playPipe(Long streamId) {

        System.out.println("Playing...");
            this.pipe.get(streamId).play();

        System.out.println("Running...");

}
public  void pausePipe(Long streamId) {

            System.out.println("Pausing...");
            this.pipe.get(streamId).pause();

}

public void  seekPipe(String seekValue, Long streamId) {
        long dur = this.pipe.get(streamId).queryDuration(TimeUnit.NANOSECONDS);
        System.out.println("Duration...");
        System.out.println(dur);
        long pos = this.pipe.get(streamId).queryPosition(TimeUnit.NANOSECONDS);

        System.out.println("Position...");
        System.out.println(pos);
        long num = Long.parseLong(seekValue);
        System.out.println("Seek to...");
        System.out.println(num);
        pipe.get(streamId).seek(num, TimeUnit.NANOSECONDS);

        pos = this.pipe.get(streamId).queryPosition(TimeUnit.NANOSECONDS);
        System.out.println("Position...");
        System.out.println(pos);
}

public Long getDuration(){
    Long dur = this.pipe.get(1212).queryDuration(TimeUnit.NANOSECONDS);
    return  dur;

}
}

package com.shine.frontend.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;

@Controller
public class RequestController{
@Value("${req.urlAddr}")
String storageUrl;
        @GetMapping("/request")
        public ResponseEntity<Object> RequestMedia(@RequestParam(name="name") String name) {
            try {
//                URL url = new URL(storageUrl+name);
//                InputStream inputStream  = url.openStream();
//                OutputStream outputStream = new FileOutputStream(new File(name));
//
//                int read = 0;
//                byte[] bytes = new byte[1024];
//
//                while ((read = inputStream.read(bytes)) != -1) {
//                    outputStream.write(bytes, 0, read);
//                }

                System.out.println("Done!");
               return new ResponseEntity<>("200", HttpStatus.OK);

            } catch (Exception ex) {
                ex.printStackTrace();

            }
            return new ResponseEntity<>("404", HttpStatus.OK);
        }
}

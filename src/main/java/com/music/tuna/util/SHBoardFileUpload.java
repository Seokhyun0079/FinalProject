package com.music.tuna.util;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;

public class SHBoardFileUpload {
    public static String fileUpload(MultipartFile multipartFile, String filePath, HttpServletRequest request) throws IOException{
        String fileName = null;
        if(!multipartFile.isEmpty()){
            fileName = new Date().getTime() + multipartFile.getOriginalFilename();
            multipartFile.transferTo(new File(request.getSession().getServletContext().getRealPath(filePath)+fileName));
        }
        return fileName;
    }
}

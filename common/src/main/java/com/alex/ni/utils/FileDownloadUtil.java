package com.alex.ni.utils;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

public class FileDownloadUtil {
    public static OutputStream getDownLoad(HttpServletResponse response, String fileName) throws IOException {
        response.setContentType("text/html; charset = UTF-8");
        response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
        return response.getOutputStream();
    }
}

package com.alex.ni.utils;

import java.io.UnsupportedEncodingException;

/**
 * @ClassName: UrlUtil
 * @Description:TODO(url转码、解码)
 * @author: yangzhao
 * @date: 2019年2月13日 下午3:44:19
 */
public class UrlUtil {

    private final static String ENCODE = "GBK";

    /**
     * @Title: getURLDecoderString
     * @Description: TODO(URL 解码)
     * @param: @param str
     * @return: String
     * @author: yangzhao
     * @date: 2019年2月13日 下午3:55:57
     */
    public static String getURLDecoderString(String str) {
        String result = "";
        if (null == str) {
            return "";
        }
        try {
            result = java.net.URLDecoder.decode(str, ENCODE);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     * @Title: getURLEncoderString
     * @Description: TODO(URL 转码)
     * @param: @param str
     * @author: yangzhao
     * @date: 2019年2月13日 下午3:55:29
     */
    public static String getURLEncoderString(String str) {
        String result = "";
        if (null == str) {
            return "";
        }
        try {
            result = java.net.URLEncoder.encode(str, ENCODE);
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return result;
    }

    /**
     *  根据url 后缀获取文件类型
     *
     * @param filenameExtension 文件后缀
     * @return int 0：视频,1：图片,2：音频,-1：未知
     */
    public static Integer getFileType(String filenameExtension) {
        //图片
        if (filenameExtension.equalsIgnoreCase(".bmp")) {
            return 1;
        }
        if (filenameExtension.equalsIgnoreCase(".gif")) {
            return 1;
        }
        if (filenameExtension.equalsIgnoreCase(".jpeg") || filenameExtension.equalsIgnoreCase(".jpg")
                || filenameExtension.equalsIgnoreCase(".png")) {
            return 1;
        }

        //视频
        if (filenameExtension.equalsIgnoreCase(".mp4")) {
            return 0;
        }
        if (filenameExtension.equalsIgnoreCase(".avi")) {
            return 0;
        }
        if (filenameExtension.equalsIgnoreCase(".wmv")) {
            return 0;
        }

        //音频
        if (filenameExtension.equalsIgnoreCase(".mp3")) {
            return 2;
        }
        return -1;
    }

 /*   public static void main(String[] args) {
        String str = "http://127.0.0.1:8090/mqi/dataInterface/findInftConfgById?intfInputConfgId=7c3f3b04e7da11e8bcdd9829a6540f62";
        System.out.println(getURLEncoderString(str));
        System.out.println(getURLDecoderString(str));

    }*/

}

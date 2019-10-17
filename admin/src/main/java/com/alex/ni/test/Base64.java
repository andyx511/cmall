package com.alex.ni.test;

import java.io.IOException;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des
 */
public class Base64 {
    private static String src="cookies";
    public static void main(String[] agrs){
        jdkbase64();
        commonsCodeBase64();
        bcBase64();
    }
    public static void jdkbase64(){

        try {
            BASE64Encoder encoder=new BASE64Encoder();
            String encode=encoder.encode(src.getBytes());
            System.out.println("jdk----encode:"+encode);

            BASE64Decoder decode=new  BASE64Decoder();

            System.out.println("jdk----decode:"+new String(decode.decodeBuffer(encode)));
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void commonsCodeBase64(){
        byte []encode=org.apache.commons.codec.binary.Base64.encodeBase64(src.getBytes());
        System.out.println("cc----encode:"+new String(encode));

        byte []decode=org.apache.commons.codec.binary.Base64.decodeBase64(encode);
        System.out.println("cc----decode:"+new String(decode));
    }

    public static void bcBase64(){
        byte []encode=org.bouncycastle.util.encoders.Base64.encode(src.getBytes());
        System.out.println("bc----encode:"+new String(encode));

        byte []decode=org.bouncycastle.util.encoders.Base64.decode(encode);
        System.out.println("bc----decode:"+new String(decode));
    }

}

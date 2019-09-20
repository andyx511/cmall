package com.alex.ni.utils;


public class DigitEncryptionUtil {

	/**
	 *
	 * @Title: encrypt
	 * @Description: 加密操作
	 * @param content 内容
	 * @return
	 */
    public static String encrypt(String content) {
        return content + RandomUtil.generateStrSmall(16);
    }

   /**
    *
    * @Title: decrypt
    * @Description:解密操作
    * @param content 内容
    * @return
    */
    public static String decrypt(String content) {

    	return content.substring(0, content.length()-16);
    }

//    public static void main(String[] args) {
//    	String str = encrypt("6a4b7acf04bead50");
//    	System.err.println(str);
//    	System.err.println(decrypt("6a4b7acf04bead509wkp7wl35wf0jzpl"));
//	}

}

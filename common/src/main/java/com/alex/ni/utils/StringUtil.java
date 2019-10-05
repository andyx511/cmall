package com.alex.ni.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author NiDingbo
 * @date 2019/10/5 14:22
 */
public class StringUtil {
    public static boolean isEmpty(String str) {
        return str==null||"".equals(str.trim());
    }

    public static boolean isNotEmpty(String str) {
        return !isEmpty(str);
    }

    /**
     * 电话校验
     * @param phoneNumber
     * @return
     */
    private static Pattern phone = Pattern.compile("^((13[0-9])|(14[5,7,9])|(15([0-3]|[5-9]))|(166)|(17[0,1,3,5,6,7,8])|(18[0-9])|(19[8|9]))\\d{8}$");

    public static boolean checkPhoneNumber(String phoneNumber) {
        if (phoneNumber.length() != 11) {
            return false;
        }
        Matcher m = phone.matcher(phoneNumber);
        boolean isMatch = m.matches();
        if (!isMatch) {
            return false;
        }
        return true;
    }
}

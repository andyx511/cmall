package com.alex.ni.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class EmailCheck {

    private static final Pattern emailPattern = Pattern.compile("[\\w.\\\\+\\-\\*\\/\\=\\`\\~\\!\\#\\$\\%\\^\\&\\*\\{\\}\\|\\'\\_\\?]+@[\\w.\\\\+\\-\\*\\/\\=\\`\\~\\!\\#\\$\\%\\^\\&\\*\\{\\}\\|\\'\\_\\?]+\\.[\\w.\\\\+\\-\\*\\/\\=\\`\\~\\!\\#\\$\\%\\^\\&\\*\\{\\}\\|\\'\\_\\?]+");

    public static boolean isEmail(String email) {
        try {
            final Matcher mat = emailPattern.matcher(email);
            return mat.matches();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

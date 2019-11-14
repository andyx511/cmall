package com.alex.ni.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author ndb
 */
public class LoginPWDCheck {

    public static final Pattern PASSWORD_PATTERN = Pattern.compile("^(?![A-Za-z]+$)(?![A-Z\\d]+$)(?![A-Z\\W]+$)(?![a-z\\d]+$)(?![a-z\\W]+$)(?![\\d\\W]+$)\\S{8,20}$");

    /**
     * 密码要求 密码必须符合由数字,大写字母,小写字母,特殊符,至少其中三种组成密码(8到20位字符)
     * @param password
     * @return
     */
    public static boolean isPassword(String password) {
        try {
            final Matcher mat = PASSWORD_PATTERN.matcher(password);
            return mat.matches();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void main(String[] args) {
        String pw1 = "ABCDEFGHIG";
        String pw2 = "abcdefghig";
        String pw3 = "0123456789";
        String pw4 = "!@#$%^&*()";
        String pw5 = "ABCDEabcde";
        String pw6 = "ABCDE01234";
        String pw7 = "ABCDE!@#$%";
        String pw8 = "abcde01234";
        String pw9 = "abcde!@#$%";
        String pw10 = "01234!@#$%";
        String pw11 = "abcde01234!@#$%";
        String pw12 = "ABCDE01234!@#$%";
        String pw13 = "ABCDEabcde!@#$%";
        String pw14 = "ABCDEabcde01234";
        String pw15 = "Aa0!";
        //符合要求密码
        String pw16="ABC*%$bc12!@#()&";

        System.out.println("1~~~" + isPassword(pw1));
        System.out.println("2~~~" + isPassword(pw2));
        System.out.println("3~~~" + isPassword(pw3));
        System.out.println("4~~~" + isPassword(pw4));
        System.out.println("5~~~" + isPassword(pw5));
        System.out.println("6~~~" + isPassword(pw6));
        System.out.println("7~~~" + isPassword(pw7));
        System.out.println("8~~~" + isPassword(pw8));
        System.out.println("9~~~" + isPassword(pw9));
        System.out.println("10~~~" + isPassword(pw10));
        System.out.println("11~~~" + isPassword(pw11));
        System.out.println("12~~~" + isPassword(pw12));
        System.out.println("13~~~" + isPassword(pw13));
        System.out.println("14~~~" + isPassword(pw14));
        System.out.println("15~~~" + isPassword(pw15));
        System.out.println("16~~~" + isPassword(pw16));
    }
}

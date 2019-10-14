package com.alex.ni.controller;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * @author NiDingbo
 * @date 2019/9/20
 * @des
 */
public class BeanHelper {

    public static <T> void  nullToEmpty(T bean) {
        Field[] field = bean.getClass().getDeclaredFields();
        //遍历所有属性
        for (int j = 0; j < field.length; j++) {
            //获取属性的名字
            String name = field[j].getName();
            //将属性的首字符大写，方便构造get，set方法
            name = name.substring(0, 1).toUpperCase() + name.substring(1);
            //获取属性的类型
            String type = field[j].getGenericType().toString();
            //如果type是类类型，则前面包含"class "，后面跟类名
            if (type.equals("class java.lang.String")) {
                try {
                    Method mGet = bean.getClass().getMethod("get" + name);
                    //调用getter方法获取属性值
                    String value = (String) mGet.invoke(bean);
                    if (value == null || "".equals(value)) {
                        Method mSet = bean.getClass().getMethod("set" + name, new Class[]{String.class});
                        mSet.invoke(bean, new Object[]{new String("")});
                    }
                } catch (NoSuchMethodException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }
            if (type.equals("class java.lang.Integer")) {
                try {
                    Method mGet = bean.getClass().getMethod("get" + name);
                    //调用getter方法获取属性值
                    String value = (String) mGet.invoke(bean);
                    if (value == null || "".equals(value)) {
                        Method mSet = bean.getClass().getMethod("set" + name, new Class[]{Integer.class});
                        mSet.invoke(bean, new Object[]{new Integer("-1")});
                    }
                } catch (NoSuchMethodException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

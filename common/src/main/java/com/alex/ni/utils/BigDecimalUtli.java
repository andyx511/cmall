package com.alex.ni.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;

public class BigDecimalUtli {

    private static final BigDecimal zero = new BigDecimal("0");

    /**
     *
     * @Title: compareTo
     * @Description:比较大小
     * @param arg1
     * @param arg2
     * @return int | = 1,表示arg1大于arg2;| = 0,表示arg1等于arg2;| = -1,表示arg1小于arg2;
     */
    public static int compareTo(BigDecimal arg1,BigDecimal arg2){
        return arg1.compareTo(arg2);
    }

    /**
     *
     * @Title: add
     * @Description:arg1 + arg2 加法
     * @param arg1
     * @param arg2
     * @return BigDecimal
     */
    public static BigDecimal add(BigDecimal arg1,BigDecimal arg2){
        return arg1.add(arg2);
    }

   /**
    *
    * @Title: subtract
    * @Description:arg1 - arg2 相减
    * @param arg1
    * @param arg2
    * @return BigDecimal
    */
    public static BigDecimal subtract(BigDecimal arg1,BigDecimal arg2){
        return arg1.subtract(arg2);
    }

   /**
    *
    * @Title: multiply
    * @Description:arg1 * arg2 相乘
    * @param arg1
    * @param arg2
    * @return BigDecimal
    */
    public static BigDecimal multiply(BigDecimal arg1,BigDecimal arg2){
        return arg1.multiply(arg2);
    }


    /**
     *
     * @Title: divide
     * @Description:arg1 / arg2 相除
     * @param arg1
     * @param arg2
     * @return BigDecimal 默认保留两位小数，四舍五入
     */
    public static BigDecimal divide(BigDecimal arg1,BigDecimal arg2){
        if(arg2.compareTo(zero) == 0){
            return new BigDecimal("0.00");
        }
        return arg1.divide(arg2,2,BigDecimal.ROUND_HALF_UP);
    }

    /**
     *
     * @Title: setScale
     * @Description:格式化小数,保留两位小数,舍入根据模式判断
     * @param arg1
     * @return BigDecimal
     */
    public static BigDecimal setScale(BigDecimal arg1){
        return arg1.setScale(2,BigDecimal.ROUND_HALF_UP);    //四舍五入
//        return arg1.setScale(2,BigDecimal.ROUND_HALF_DOWN);    //五舍六入
//        return arg1.setScale(2,BigDecimal.ROUND_DOWN);        //直接删除多余的小数位
//        return arg1.setScale(2,BigDecimal.ROUND_UP);        //直接进位
    }

    /**
     *
     * @Title: bigDecimalToStr
     * @Description:BigDecimal 四舍五入后，转换为带二位小数字符串
     * @param arg1 金额
     * @param format 保留几位小数点 0.00
     * @return 字符串
     */
    public static String bigDecimalToStr(BigDecimal arg1,DecimalFormat dformat) {
    	arg1.setScale(2,BigDecimal.ROUND_HALF_UP);
		return dformat.format(arg1);
	}
}

package com.alex.ni;

import cn.hutool.core.date.DateUtil;
import com.alex.ni.utils.SystemUtil;

import java.util.Date;

/**
 * @author NiDingbo
 * @date 2019/9/17
 * @des
 */
public class Test {
    public static void main(String []args){
        String name = SystemUtil.getOsName();
        long a = SystemUtil.getUsedMemory();
        long b = SystemUtil.getTotalMemorySize();
        double c = SystemUtil.getSystemCpuLoad();
        double d = SystemUtil.getProcessCpuLoad();
        Date da = DateUtil.yesterday();


        System.out.println("name:"+ da);
        System.out.println("已使用内存"+ a);
        System.out.println("总内存"+ b);
        System.out.println("系统cpu负载"+ c);
        System.out.println("jvm负载"+ c);
    }
}

package com.alex.ni.utils;

import java.util.UUID;

/**
 * @author kounannan
 * @Description
 * @date 2018/6/1  15:00
 */
public class UUIDTool {
    public UUIDTool() {
    }

    /**
     * 自动生成32位的UUid，对应数据库的主键id进行插入用。
     *
     * @return
     */
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}

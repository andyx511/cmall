package com.alex.ni.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 * @author NiDingbo
 * @date 2019/9/17
 * @des
 */
@Configuration
@EnableTransactionManagement
@MapperScan({"com.alex.ni.mapper","com.alex.ni.dao"})
public class MyBatisConfig {
}

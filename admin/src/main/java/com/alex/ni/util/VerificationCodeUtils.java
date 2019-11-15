package com.alex.ni.util;


import com.aliyuncs.exceptions.ClientException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.concurrent.TimeUnit;

/**
 * @author NiDingbo
 * @date 2019/9/16
 * @des
 */
@Service
public class VerificationCodeUtils {

    @Autowired
    private AliyunSmsUtils aliyunSmsUtils;
    @Resource
    private RedisTemplate<String, Object> redisTemplate;
    @Autowired
    private VerificationCodeUtils verificationCodeUtils;

    Integer TIME_OUT = 2;
    /**
     * 从 redis 中获取验证码
     * @param phone
     * @return
     */
    public String getVerificationCodeByType(String phone){
        Object vCode = redisTemplate.opsForValue().get(phone);
        if(vCode==null){
            return null;
        }
        return vCode.toString();
    }

    /**
     * 向 redis 中存放验证码
     * @param phone
     * @param time
     */
    public void setVerificationCodeByType(String phone,String code,Integer time){
        redisTemplate.opsForValue().set(phone,code,time, TimeUnit.MINUTES);
    }
    /**
    * 存放图图片验证码
    */
 /*   public void setCode(String code){
        redisTemplate.opsForValue().set("code", code);
    }
    public String getCode(){
        return redisTemplate.opsForValue().get("code").toString();
    }*/

    /**
     * 在 redis 中删除验证码
     * @param phone
     */
    public void delVerificationCodeByType(String phone){
        redisTemplate.delete(phone);
    }

    /**
     * 发送验证码
     * @param phone
     */
    public boolean sendrVerificationCode(String phone) throws ClientException {
        String code = setCode();
        //保存验证码到redis
        setVerificationCodeByType(phone,code,TIME_OUT);
        // 调用阿里云短信
        boolean flag = aliyunSmsUtils.sendMsg(phone, code);
        return flag;
    }

    /**
     * 创建六位数验证码
     * @return java.lang.String
     */
    public static String setCode() {
        int code = (int) ((Math.random() * 999999) + 100);
        return code + "";
    }
}

package com.alex.ni.config;

import org.springframework.context.annotation.Configuration;

import java.io.FileWriter;
import java.io.IOException;

/**
 * @author NiDingbo
 * @date 2019/12/16
 * @des
 */
public class AlipayConfig {

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号,开发时使用沙箱提供的APPID，生产环境改成自己的APPID
    public static String APP_ID = "2016101600697029";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String APP_PRIVATE_KEY = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC2dRJJ+d0B8znM4tGLyzOzLEv1mt2s6l4kzOD0BLT5ivTiBs5BBTJzqFj1V+m6G2XSvNDTkj0dsz+uxB+lFoXVL9ewL93Xj0TuqXFZGm5liC9qY0exH6GAjWb0uxDVzxylSZ+oa42KB4X/ej5xXNvOj8tnpYbQwSMUeB1SeGltH+poLby7NqJ7XQdiw5ygcR1lqzYBuzMmk6IAa65OY1wboJGaMaOfXl7o2lDQc1tm90CdUTu546SaM+KPpFyGgcBnzT7QYwNJdKr2Ck8BTftX4Vgygpopb4r5IGzhUvJZ0fjIj0EffM6ptEXzF1WH67D0OJvdutXhLY8APvlU6nF9AgMBAAECggEAFS++8ewbp7BQk+P6pRrxY+rO3zQebYfBatCHho5NXXSvPte/d3ldBGUV/1c4Aq5Pwoq+TPL8OcioqmiHrCnTXI/zobfNMMyoGnZ+fPQ+wXdw2g+xMXYU0NKak+xs5gbosqC781iZ1N9Oxf2x5oP72h6EZgKohvEGW8gez4a/5zXNIN5IoxOhq9Hs1UTmexudfTlaGU9Sq9tFHyzG7AjHwGd9mAu3avbqt2K1FEBC63MDV4EM9guf0qQQPm9GTCduilcq/rnKnxh9UhRdky70G3tsX7qQ3lCXa6RGK2qNkiDR9rxHkgrU1ttLDE89GiiH8zoL/be7L+TG0w8G9bwSmQKBgQDs62MLx8fFhyOJkMlGom5erfNCC+syH5oSA3dr8H+kY84UViYwZaTNt0TBDGZW4J0udbTBD/eYaotD2I27K/b/ZAuCVPG7q/cmJFZmlwrGnhvX6mLbxR7A3L4pIOeu2hTom8y0Q7Cj1ul5qhOj633KwGgRkILfZw7nF20+hBQfDwKBgQDFJtPs2f4CcoXD0YQQ9njeT5u322QWcymzsuHjeY0z8bVbcIo5NRJAt32YJMEWKXDI79Kw6/iiJOXQnr/QiT5M9uqHvQORdWvgoxaefVosGWRakPTdyC1Xhn6YiOOG4/jwbwXApz0IhWp01a/iAW3C0kJFAuI3wEs9Ado01fumswKBgQChr8r6oS8vGRkhqxQSBox4RRK8wlGS9Yo6PO9lVM5nrE1aB6ksYlHkquxbK1E0fToIGQBwuarp89xzQvkHAewhQ2+vVLVctPGIsEfe37nU7tZltmodPhvM11lXzEMRS3f1f05mv8NvLR5Nj8qzleVVV5YuVodaW4UKJSzC+3SX9QKBgFxURsORg6fZwlNmd5cKFqjmV2LPWBw7arhBehByCHLfK7PbDKCl/hpY1HTAIb0jQzKXPfClUhd9eDMvZV1gKNEagdN37YfdmdvmBN3MjsJAUgMoB8UlzjZDQl5lHUk60oanN+Z1a9vlv2lf+bK6QJEQrwBqzU6Wu6WijHJaFDSJAoGBAOiI85v+j7no/QSIRhU3hhYi5Q68OXI2DD3jA2lpY7M12FnNaVQPgzEE860IjOMZ8MTuP2l2R00PPUqEuOg5Pzu7a3bqFUROY0X7pX7IVXSWkNoxepAJ188g/ssZ/ugu+ulddu1QKDM9ouDu54lUB1GF9x4AzKZRK3z7KuCbdv47";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhejhmrsRrWTMNLweJQK3I6g6LGsIiHszvDRhGXx6hvDjivnYAwOIoxqPkxqIz7YQKnso9eOBzlurisGUbqQkOir4oZyUQSA0+Kr862aEk6bb+Pk4g73DuwkflMncKfRnLslPmD6f4GATCB1vOlCJV20of2jNSyr6ZFpb9I49szdClMfDNLVby3um25AaDllCA9ichKpd+kMIWnDqULPf2Dumq7/qqTy9QlTeJhtHiFxUuHf0oyM5ccvRJJ67Aje4DjYeV3shIEbr9T7id3+eYlxhzseYFuMy5uQsLp7aMBf9ixYO6KSyCHuBwvt0laiu3+sVmvON7OtKZcuUNQMFswIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问(其实就是支付成功后返回的页面)
    public static String return_url = "http://localhost:8080/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String CHARSET = "utf-8";

    // 支付宝网关，这是沙箱的网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

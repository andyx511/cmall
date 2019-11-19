package com.alex.ni.component;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * @author NiDingbo
 * @date 2019/11/18
 * @des
 */
@Component
public class SpringTask {

    private Logger logger = LoggerFactory.getLogger(SpringTask.class);


//    @Scheduled(cron = "0 0/10 * ? * ?")
//    private void cancelTimeOutOrder() {
//        logger.info("发货");
//    }
}

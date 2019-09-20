package com.alex.ni.controller;


import com.alex.ni.dto.CommonResult;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.qcloud.cos.COSClient;
import com.qcloud.cos.ClientConfig;
import com.qcloud.cos.auth.BasicCOSCredentials;
import com.qcloud.cos.auth.COSCredentials;
import com.qcloud.cos.model.ObjectMetadata;
import com.qcloud.cos.model.PutObjectRequest;
import com.qcloud.cos.model.PutObjectResult;
import com.qcloud.cos.region.Region;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * @author NiDingbo
 * @date 2019/9/20
 * @des 对象存储
 */
@Controller
@Api(tags = "对象存储" ,description = "对象存储")
@RequestMapping("oss")
public class OssController {

    @JsonIgnoreProperties(value = { "handler", "hibernateLazyInitializer", "fieldHandler" })
    public class UploadResult implements Serializable {
        private static final long serialVersionUID = 1L;

        private String host;
        private String path;

        public String getHost() {
            return host;
        }

        public void setHost(String host) {
            this.host = host;
        }

        public String getPath() {
            return path;
        }

        public void setPath(String path) {
            this.path = path;
        }

    }

    @ApiOperation(value = "上传文件")
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    @ResponseBody
    public Object upload(@RequestParam("file") MultipartFile file) {
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd/HH-mm-ss/SSS-");
        String fileName = file.getOriginalFilename();
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        String newFileName = "/MALL/" + df.format(new Date()) + UUID.randomUUID().toString() + suffixName;

        try {
            COSCredentials cred = new BasicCOSCredentials("AKIDAEAxaHPBMSTROGfd6OVUNUQAi4EKE0WV", "ylY9fqCTZTyNbL2peWL2ZzETdhaMxe0I");
            ClientConfig clientConfig = new ClientConfig(new Region("ap-chengdu"));
            COSClient cosClient = new COSClient(cred, clientConfig);
            String bucketName = "meishutest-1256675553";
            PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, newFileName, file.getInputStream(), new ObjectMetadata());
            PutObjectResult putObjectResult = cosClient.putObject(putObjectRequest);
            cosClient.shutdown();

            UploadResult rs = new UploadResult();
            if (null != putObjectResult) {
                rs.setHost("https://meishutest-1256675553.cos.ap-chengdu.myqcloud.com");
                rs.setPath(newFileName);
            }

            return new CommonResult().success(rs);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
        return new CommonResult().failed();
    }

}

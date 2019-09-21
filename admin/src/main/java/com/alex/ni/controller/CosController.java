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
 * @des
 */
@Controller
@Api(tags = "腾讯云对象存储" ,description = "对象存储")
@RequestMapping("/cos")
public class CosController {

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
            COSCredentials cred = new BasicCOSCredentials("AKIDIPH0VkSV1IK6dwS9yd3FCuNbaJn3PpLb", "C9uSlpfFafV6RYP6YmldU8XeW9XfYCbl");
            ClientConfig clientConfig = new ClientConfig(new Region("ap-chengdu"));
            COSClient cosClient = new COSClient(cred, clientConfig);
            String bucketName = "alex-1300169762";
            PutObjectRequest putObjectRequest = new PutObjectRequest(bucketName, newFileName, file.getInputStream(), new ObjectMetadata());
            PutObjectResult putObjectResult = cosClient.putObject(putObjectRequest);
            cosClient.shutdown();

            CosController.UploadResult rs = new CosController.UploadResult();
            String str = "";
            if (null != putObjectResult) {
                rs.setHost("https://alex-1300169762.cos.ap-chengdu.myqcloud.com");
                rs.setPath(newFileName);
                str = "https://alex-1300169762.cos.ap-chengdu.myqcloud.com"+ newFileName;
            }

            return new CommonResult().success(str);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
        }
        return new CommonResult().failed();
    }

}



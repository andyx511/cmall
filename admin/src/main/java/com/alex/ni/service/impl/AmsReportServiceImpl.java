package com.alex.ni.service.impl;

import com.alex.ni.dao.AmsReportDao;
import com.alex.ni.service.AmsReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author NiDingbo
 * @date 2019/10/14
 * @des 报表统计
 */
@Service
public class AmsReportServiceImpl implements AmsReportService {
    @Autowired
    private AmsReportDao reportDao;
    @Override
    public List<Map> systemVisied() {
        List<Map> list = reportDao.systemVisited();
        return list;
    }

    @Override
    public List<Map> orderReport() {

        return null;
    }

    @Override
    public List<Map> productKind() {
        return null;
    }

    @Override
    public List<Map> productBrand() {
        return null;
    }
}

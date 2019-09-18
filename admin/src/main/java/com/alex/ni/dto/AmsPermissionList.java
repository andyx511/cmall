package com.alex.ni.dto;

import com.alex.ni.model.AmsPerssion;
import lombok.Data;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/9/18
 * @des
 */
@Data
public class AmsPermissionList extends AmsPerssion {
    private List<AmsPermissionList> children;
}
